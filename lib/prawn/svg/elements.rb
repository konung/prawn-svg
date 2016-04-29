module Prawn::SVG::Elements
  COMMA_WSP_REGEXP = /(?:\s+,?\s*|,\s*)/
end

%w(base depth_first_base root container viewport style text text_component line polyline polygon circle ellipse rect path use image gradient marker ignored).each do |filename|
  require "prawn/svg/elements/#{filename}"
end

module Prawn::SVG::Elements
  TAG_CLASS_MAPPING = {
    g: Prawn::SVG::Elements::Container,
    symbol: Prawn::SVG::Elements::Container,
    defs: Prawn::SVG::Elements::Container,
    clipPath: Prawn::SVG::Elements::Container,
    switch: Prawn::SVG::Elements::Container,
    svg: Prawn::SVG::Elements::Viewport,
    style: Prawn::SVG::Elements::Style,
    text: Prawn::SVG::Elements::Text,
    line: Prawn::SVG::Elements::Line,
    polyline: Prawn::SVG::Elements::Polyline,
    polygon: Prawn::SVG::Elements::Polygon,
    circle: Prawn::SVG::Elements::Circle,
    ellipse: Prawn::SVG::Elements::Ellipse,
    rect: Prawn::SVG::Elements::Rect,
    path: Prawn::SVG::Elements::Path,
    use: Prawn::SVG::Elements::Use,
    image: Prawn::SVG::Elements::Image,
    linearGradient: Prawn::SVG::Elements::Gradient,
    marker: Prawn::SVG::Elements::Marker,
    title: Prawn::SVG::Elements::Ignored,
    desc: Prawn::SVG::Elements::Ignored,
    metadata: Prawn::SVG::Elements::Ignored,
    foreignObject: Prawn::SVG::Elements::Ignored,
    :"font-face" => Prawn::SVG::Elements::Ignored,
  }
end
