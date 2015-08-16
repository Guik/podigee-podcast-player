$ = require('../../vendor/javascripts/jquery.1.11.0.min.js')
sightglass = require('../../vendor/javascripts/sightglass.js')
rivets = require('../../vendor/javascripts/rivets.min.js')

class ChapterMark
  constructor: (context, callback) ->
    @context = context
    @callback = callback

  render: =>
    @elem = $(@defaultHtml)
    rivets.bind(@elem, @context)
    @elem.on('click', 'img, span', @context, @callback)

    return @elem

  defaultHtml:
    """
    <li rv-data-start="start">
      <img rv-src="image" rv-if="image"/>
      <span>{ title }</span>
      <a rv-if="href" rv-href="href" target="_blank"><i class="fa fa-external-link"></i></a>
    </li>
    """

module.exports = ChapterMark