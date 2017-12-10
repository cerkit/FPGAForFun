<?xml version="1.0" encoding="UTF-8"?>
<project name="Max7219Counter" board="Mojo V3" language="Lucid">
  <files>
    <src>base_ctr.luc</src>
    <src>multi_base_ctr.luc</src>
    <src>seven_seg.luc</src>
    <src>multi_seven_seg.luc</src>
    <src>max7219.luc</src>
    <src top="true">mojo_top.luc</src>
    <ucf>max7219.ucf</ucf>
    <ucf lib="true">mojo.ucf</ucf>
    <component>decoder.luc</component>
    <component>spi_master.luc</component>
    <component>reset_conditioner.luc</component>
    <component>counter.luc</component>
    <component>edge_detector.luc</component>
  </files>
</project>
