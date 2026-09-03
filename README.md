# Assignment 1, CS 3710 Fall Section 001

## Your name

## Your student Number

## Description

Create todo application an RoR as we've been doing in class, but add a
priority field. The fields must be:
- `what:string`
- `when:date`
- `priority:integer`

Display the todo's in priority order; you'll need to modify
`app/controllers/items_controller.rb` to do so. Read
<https://guides.rubyonrails.org/active_record_basics.html>

Also, create a drop-down using collection\_select for the priority in
`app/views/items/_form.html.erb`. Read to doco in
<https://api.rubyonrails.org/v8.1.3.1/classes/ActionView/Helpers/FormBuilder.html#method-i-collection_select>
and
<https://guides.rubyonrails.org/form_helpers.html#the-collection-select-helper>

Make sure your application runs all 11 assertions from `rails test`.

## Sources used, including AI prompts.
