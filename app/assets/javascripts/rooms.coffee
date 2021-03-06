# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
    $('#meeting_title').parent().append("<span class='help-block'></span>")
    $('#meeting_title').keydown ->
      inputLen   = $(@).val().length
      minLength  = 4
      maxLength  = 50
      correct    = '✓ '
      err        = '✗ '

      if inputLen == 0
        errMessage = err + ' Field is Required'
      else if inputLen < minLength
        errMessage = err + ' Not Long Enough'
      else if inputLen > maxLength
        errMessage = err + ' Too Long'
      else
        errMessage = correct

      $(@).parent().find(".help-block").html(errMessage)
      if errMessage != correct
        $(@).parent().addClass('has-error')
      else
        $(@).parent().addClass('has-success')
                     .removeClass('has-error')
