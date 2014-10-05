(function() {
  var MAX_HEIGHT, MAX_WIDTH;

  MAX_WIDTH = 500;

  MAX_HEIGHT = 500;

  $('pre').filter(function(i, el) {
    return $(el).has('code');
  }).each(function() {
    var code, doc, iframe, win, wrapperDiv, _ref;
    wrapperDiv = $('<div>').css({
      float: 'right',
      overflow: 'hidden',
      position: 'relative',
      zIndex: '-1',
      width: 0,
      height: 0
    }).prependTo(this);
    iframe = $('<iframe>').css({
      position: 'absolute',
      left: '-9999px',
      top: '-9999px',
      zIndex: '-1',
      width: MAX_WIDTH,
      height: MAX_HEIGHT
    }).get(0);
    wrapperDiv.append(iframe);
    win = (_ref = iframe.contentWindow) != null ? _ref : iframe.contentDocument;
    doc = win.document;
    code = this.innerText;
    doc.open();
    doc.write("<!doctype html>\n<html>\n<body>\n<script src='vendor/turtlebits.js'></script>\n<script src='vendor/seedrandom.js'></script>\n<script type=\"text/coffeescript\">\neval @_start_ide_cs\nwindow.speed Infinity\nwindow.speed = ->\nMath.seedrandom 'turtle'\n" + code + "\n </script>\n </body>\n </html>");
    doc.close();
    return win.addEventListener('load', (function(_this) {
      return function() {
        var canvas, ctx, data, distance, i, max, min, x, y, _, _i, _len, _ref1;
        canvas = win.canvas();
        ctx = canvas.getContext('2d');
        data = ctx.getImageData(0, 0, canvas.width, canvas.height);
        min = {
          x: Infinity,
          y: Infinity
        };
        max = {
          x: 0,
          y: 0
        };
        distance = {
          x: 0,
          y: 0
        };
        _ref1 = data.data;
        for (i = _i = 0, _len = _ref1.length; _i < _len; i = _i += 4) {
          _ = _ref1[i];
          if (data.data[i + 3] > 0) {
            x = (i / 4) % data.width;
            y = Math.floor(i / (4 * data.width));
            min.x = Math.min(min.x, x);
            max.x = Math.max(max.x, x);
            min.y = Math.min(min.y, y);
            max.y = Math.max(max.y, y);
            distance.x = Math.max(distance.x, Math.abs((data.width / 2) - x));
            distance.y = Math.max(distance.y, Math.abs((data.height / 2) - y));
          }
        }
        win.$('div, button').each(function() {
          var el;
          el = $(this);
          min.x = Math.min(min.x, el.offset().left);
          min.y = Math.min(min.y, el.offset().top);
          max.x = Math.max(max.x, el.offset().left + el.width());
          return max.y = Math.max(max.y, el.offset().top + el.height());
        });
        $(wrapperDiv).css({
          width: max.x - min.x + 50,
          height: max.y - min.y + 50
        });
        $(_this).css({
          minHeight: max.y - min.y + 50,
          border: '1px solid black'
        });
        console.log(canvas.width, canvas.height, min);
        return $(iframe).css({
          left: 25 - min.x,
          top: 25 - min.y
        });
      };
    })(this));
  });

}).call(this);
