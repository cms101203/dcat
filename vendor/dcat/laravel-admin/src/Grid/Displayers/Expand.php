<?php

namespace Dcat\Admin\Grid\Displayers;

use Dcat\Admin\Admin;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Support\Str;

class Expand extends AbstractDisplayer
{
    protected $button;

    /**
     * @var array
     */
    protected static $counter = 0;

    public function button($button)
    {
        $this->button = $button;
    }

    public function display($callbackOrButton = null)
    {
        $html = $this->value;
        if ($callbackOrButton && $callbackOrButton instanceof \Closure) {
            $callback = $callbackOrButton->bindTo($this->row);

            $html = $callback($this);
            if ($html instanceof Renderable) {
                $html = $html->render();
            }
        } elseif ($callbackOrButton && is_string($callbackOrButton)) {
            $this->button = $callbackOrButton;
        }

        $this->setupScript();

        $key = $this->getDataKey();

        $button = is_null($this->button) ? $this->value : $this->button;

        return <<<EOT
<span class="grid-expand" data-inserted="0" data-key="{$key}" data-toggle="collapse" data-target="#grid-collapse-{$key}">
   <a href="javascript:void(0)"><i class="feather icon-chevrons-right"></i>  $button</a>
</span>
<template class="grid-expand-{$key}">
    <div id="grid-collapse-{$key}" class="collapse">$html</div>
</template>
EOT;
    }

    /**
     * @return string
     */
    protected function getDataKey()
    {
        $key = $this->getKey() ?: Str::random(8);

        static::$counter++;

        return $this->grid->getName().$key.'-'.static::$counter;
    }

    protected function setupScript()
    {
        $script = <<<'JS'
$('.grid-expand').off('click').on('click', function () {
    var _th = $(this);
    
    if ($(this).data('inserted') == '0') {
    
        var key = _th.data('key');
        var row = _th.closest('tr');
        var html = $('template.grid-expand-'+key).html();
        var id = 'expand-'+key+Dcat.helpers.random(10);
        
        $(this).attr('data-expand', '#'+id);

        row.after("<tr id="+id+"><td colspan='"+(row.find('td').length)+"' style='padding:0 !important; border:0;height:0;'>"+html+"</td></tr>");

        $(this).data('inserted', 1);
    } else {
        if ($("i", this).hasClass('icon-chevrons-right')) {
            $(_th.data('expand')).show();
        } else {
            setTimeout(function() {
              $(_th.data('expand')).hide();
            }, 250);
        }
    }
    
    $("i", this).toggleClass("icon-chevrons-right icon-chevrons-down");
});
JS;
        Admin::script($script);
    }
}
