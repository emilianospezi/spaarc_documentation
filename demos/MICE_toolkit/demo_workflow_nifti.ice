<?xml version="1.0" encoding="utf-8"?>
<MICE Version="2022.4.9.0" Timestamp="2022-06-15 17:00:35.3342279">
  <Settings>
    <ID>95429480-f80f-42fb-bd4d-16d22486ec51</ID>
    <Name>New Process</Name>
    <Description />
    <Version>1.0</Version>
    <Compress>False</Compress>
  </Settings>
  <Nodes>
    <Node ID="B1CFd3d5eF207edB" T="NodeReadDicomDB" V="0.1" X="195" Y="341" FI="">
      <Inputs />
      <Outputs>
        <IO ID="7F7a1EbAf3c4daF1" T="Image4DFloat" N="Image" MI="1" MA="1" />
      </Outputs>
      <Settings>
        <SN N="SeriesID" V="6" />
        <SN N="IStructs" V="False" />
        <SN N="StructSeriesIDs" V="" />
        <SN N="IRegs" V="False" />
        <SN N="RegSeriesIDs" V="" />
        <SN N="Connection" V="DEMO_nifti" />
        <SN N="DateOffset" V="0" />
        <SN N="MatchString" V="PET_mask" />
        <SN N="IgnoreBatch" V="False" />
        <SN N="TagsSet" V="All" />
        <SN N="PrivateTags" V="False" />
        <SN N="SetNewName" V="False" />
        <SN N="NewName" V="" />
        <SN N="UseStructFilter" V="False" />
        <SN N="StructName" V="" />
        <SN N="Cond" V="Contains" />
        <SN N="CaseSensitive" V="False" />
        <SN N="Action" V="Keep" />
        <SN N="MiceType" V="Image4DFloat" />
        <SN N="DataSeriesIDs" V="" />
        <SN N="RunSingle" V="False" />
      </Settings>
    </Node>
    <Node ID="1Ff448B67D30e72c" T="NodeReadDicomDB" V="0.1" X="199" Y="224" FI="">
      <Inputs />
      <Outputs>
        <IO ID="0bEfe25666C3b528" T="Image4DFloat" N="Image" MI="1" MA="1" />
      </Outputs>
      <Settings>
        <SN N="SeriesID" V="5" />
        <SN N="IStructs" V="False" />
        <SN N="StructSeriesIDs" V="" />
        <SN N="IRegs" V="False" />
        <SN N="RegSeriesIDs" V="" />
        <SN N="Connection" V="DEMO_nifti" />
        <SN N="DateOffset" V="0" />
        <SN N="MatchString" V="PET_image" />
        <SN N="IgnoreBatch" V="False" />
        <SN N="TagsSet" V="All" />
        <SN N="PrivateTags" V="False" />
        <SN N="SetNewName" V="False" />
        <SN N="NewName" V="" />
        <SN N="UseStructFilter" V="False" />
        <SN N="StructName" V="" />
        <SN N="Cond" V="Contains" />
        <SN N="CaseSensitive" V="False" />
        <SN N="Action" V="Keep" />
        <SN N="MiceType" V="Image4DFloat" />
        <SN N="DataSeriesIDs" V="" />
        <SN N="RunSingle" V="False" />
      </Settings>
    </Node>
    <Node ID="18dAF7A3014d6ce6" T="NodeImageToMask" V="0.1" X="364" Y="313" FI="">
      <Inputs>
        <IO ID="2E03aBfDa07aBEcE" T="Image4DFloat" N="Image" MI="1" MA="1" />
      </Inputs>
      <Outputs>
        <IO ID="cbEF4cE81dF7EB12" T="Image4DBool" N="Mask" MI="1" MA="1" />
      </Outputs>
      <Settings>
        <SN N="DivVal" V="0.5" />
        <SN N="DivType" V="Higher" />
        <SN N="RunSingle" V="False" />
      </Settings>
    </Node>
    <Node ID="E5cbE43fb6b4f2AA" T="NodePlugin" V="1.0" X="534" Y="245" FI="">
      <Inputs>
        <IO ID="6daFb03c2E048b0D" T="Image4DFloat" N="Image" MI="1" MA="1" />
        <IO ID="44a0624aA2e3f1a6" T="Image4DBool" N="Mask" MI="0" MA="1" />
      </Inputs>
      <Outputs>
        <IO ID="84aF561A23B1ed0b" T="DataCollection" N="Results Data" MI="1" MA="1" />
        <IO ID="0bbe8aCdB8fBCa5a" T="Image4DFloat" N="Discretized ROI" MI="1" MA="1" />
      </Outputs>
      <Settings>
        <SN N="PluginID" V="a60d8c52-70dd-4afa-bb75-60ae9741a452" />
        <SN N="Debug" V="False" />
        <SN N="Config file" V="Y:\SPAARC export\spaarc_plugin_ver_1\config_files\STS_configPET_no_interp.json" />
      </Settings>
    </Node>
    <Node ID="245aBeE61E67ACA6" T="NodeExportExcel" V="0.1" X="757" Y="246" FI="">
      <Inputs>
        <IO ID="e2883bdBbb40Bc6A" T="DataCollection" N="In" MI="1" MA="2147483647" />
      </Inputs>
      <Outputs />
      <Settings>
        <SN N="Prefix" V="PET_features" />
        <SN N="Suffix" V="" />
        <SN N="OutPath" V="C:\Mice Export" />
        <SN N="RunSingle" V="False" />
      </Settings>
    </Node>
  </Nodes>
  <Connections>
    <CN ID1="2E03aBfDa07aBEcE" ID2="7F7a1EbAf3c4daF1" />
    <CN ID1="6daFb03c2E048b0D" ID2="0bEfe25666C3b528" />
    <CN ID1="44a0624aA2e3f1a6" ID2="cbEF4cE81dF7EB12" />
    <CN ID1="e2883bdBbb40Bc6A" ID2="84aF561A23B1ed0b" />
  </Connections>
  <Notes />
</MICE>