<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="AllStyleCategories" version="3.16.1-Hannover" minScale="1e+08" hasScaleBasedVisibilityFlag="0" maxScale="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal fetchMode="0" mode="0" enabled="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <customproperties>
    <property key="WMSBackgroundLayer" value="false"/>
    <property key="WMSPublishDataSourceUrl" value="false"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="identify/format" value="Value"/>
  </customproperties>
  <pipe>
    <provider>
      <resampling maxOversampling="2" zoomedOutResamplingMethod="nearestNeighbour" enabled="false" zoomedInResamplingMethod="nearestNeighbour"/>
    </provider>
    <rasterrenderer type="paletted" nodataColor="" alphaBand="-1" band="1" opacity="1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <colorPalette>
        <paletteEntry color="#8c0000" value="1" alpha="255" label="Compact High-Rise"/>
        <paletteEntry color="#d10000" value="2" alpha="255" label="Compact Mid-Rise"/>
        <paletteEntry color="#ff0000" value="3" alpha="255" label="Compact Low-Rise"/>
        <paletteEntry color="#bf4d00" value="4" alpha="255" label="Open High-Rise"/>
        <paletteEntry color="#ff6600" value="5" alpha="255" label="Open Mid-Rise"/>
        <paletteEntry color="#ff9955" value="6" alpha="255" label="Open Low-Rise"/>
        <paletteEntry color="#bcbcbc" value="8" alpha="255" label="Large Low-Rise"/>
        <paletteEntry color="#555555" value="10" alpha="255" label="Heavy Industry"/>
        <paletteEntry color="#006a00" value="11" alpha="255" label="Dense Trees"/>
        <paletteEntry color="#00aa00" value="12" alpha="255" label="Scattered Trees"/>
        <paletteEntry color="#648525" value="13" alpha="255" label="Bush or Scrub"/>
        <paletteEntry color="#b9db79" value="14" alpha="255" label="Low Plants"/>
        <paletteEntry color="#6a6aff" value="17" alpha="255" label="Water"/>
      </colorPalette>
      <colorramp type="randomcolors" name="[source]"/>
    </rasterrenderer>
    <brightnesscontrast contrast="0" brightness="0" gamma="1"/>
    <huesaturation colorizeStrength="100" colorizeRed="255" saturation="0" grayscaleMode="0" colorizeGreen="128" colorizeBlue="128" colorizeOn="0"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
