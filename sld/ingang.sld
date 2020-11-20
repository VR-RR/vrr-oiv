<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>Ingang</Name>
    <UserStyle>
      <Name>Ingang</Name>
      <Title>Ingang</Title>
      <Abstract></Abstract>

      <FeatureTypeStyle>
        <Rule>
          <Title>Ingang</Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>type</ogc:PropertyName>
              <ogc:Literal>hoofdingang</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MaxScaleDenominator>5000</MaxScaleDenominator>
          <PointSymbolizer>

            <Graphic>

              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xlink:href="F-NL-005_brandweeringang.png" />
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>
                <ogc:Literal>15</ogc:Literal>
              </Size>
              <Rotation><ogc:PropertyName>rotatie</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>

          <Title>Neveningang</Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>type</ogc:PropertyName>
              <ogc:Literal>neveningang</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MaxScaleDenominator>5000</MaxScaleDenominator>

          <PointSymbolizer>

            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xlink:href="F-NL-006_neveningang_brandweer.png" />
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>
                <ogc:Literal>15</ogc:Literal>
              </Size>
              <Rotation><ogc:PropertyName>rotatie</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
        </Rule>

      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
