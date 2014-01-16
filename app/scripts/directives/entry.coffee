@app.directive 'entry', ($compile) ->
  return {
    restrict: 'E',
    scope: true,

    link: (scope, element, attrs) ->
      slug = undefined

      attrs.$observe 'slug', (val) ->
        if val.length
          slug = val
          load()

      load = ->
        controller = "#{slug}Ctrl"
        template = "/views/entries/#{slug}.html"
        html = "<div ng-controller='#{controller}' ng-include=\"'#{template}'\"></div>"
        element.html(html)
        $compile(element.contents())(scope)
  }
