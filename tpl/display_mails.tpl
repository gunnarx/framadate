{extends file='page.tpl'}

{block name=main}
    <main>
    {if ($mails_yes|count) === 0}
        {__('display_mails', "No one voted 'Yes' to this option.")}</br>
    {else}
        {__('display_mails', "People who have answered 'Yes' to this option have left these email addresses:")}</br>
        {strip}
        <pre>
            {foreach $mails_yes as $mail}
                {$mail|html}<br />
            {/foreach}
        </pre>
        {/strip}
    {/if}
    <br />
    {if ($mails_ifneedbe|count) === 0}
        {__('display_mails', "No one voted 'If need be' to this option.")}</br>
    {else}
        {__('display_mails', "People who have answered 'If need be' to this option have left these email addresses:")}</br>
        {strip}
        <pre>
            {foreach $mails_ifneedbe as $mail}
                {$mail|html}<br />
            {/foreach}
        </pre>
        {/strip}
    {/if}
    <br />
    {if ($mails_no|count) === 0}
        {__('display_mails', "No one voted 'No' to this option.")}</br>
    {else}
        {__('display_mails', "People who have answered 'No' to this option have left these email addresses:")}</br>
        {strip}
        <pre>
            {foreach $mails_no as $mail}
                {$mail|html}<br />
            {/foreach}
        </pre>
        {/strip}
    {/if}
    <br />
    <a href="{poll_url id=$admin_poll_id admin=true}" class="btn btn-default" name="back">{__('adminstuds', 'Back to the poll')}</a>
{/block}
