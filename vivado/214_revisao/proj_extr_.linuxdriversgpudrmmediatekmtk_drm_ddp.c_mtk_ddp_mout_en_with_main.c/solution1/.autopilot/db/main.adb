<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>main</name>
      <ret_bitwidth>32</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>0</count>
        <item_version>0</item_version>
      </ports>
      <nodes class_id="3" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="4" tracking_level="1" version="0" object_id="_1">
          <Value class_id="5" tracking_level="0" version="0">
            <Obj class_id="6" tracking_level="0" version="0">
              <type>0</type>
              <id>3</id>
              <name>_ln147</name>
              <fileName>extr_.linuxdriversgpudrmmediatekmtk_drm_ddp.c_mtk_ddp_mout_en_with_main.c</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>147</lineNumber>
              <contextFuncName>main</contextFuncName>
              <inlineStackInfo class_id="7" tracking_level="0" version="0">
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="8" tracking_level="0" version="0">
                  <first>/home/vivado/aut</first>
                  <second class_id="9" tracking_level="0" version="0">
                    <count>1</count>
                    <item_version>0</item_version>
                    <item class_id="10" tracking_level="0" version="0">
                      <first class_id="11" tracking_level="0" version="0">
                        <first>extr_.linuxdriversgpudrmmediatekmtk_drm_ddp.c_mtk_ddp_mout_en_with_main.c</first>
                        <second>main</second>
                      </first>
                      <second>147</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>6</item>
          </oprand_edges>
          <opcode>ret</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>1</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
      </nodes>
      <consts class_id="13" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="14" tracking_level="1" version="0" object_id="_2">
          <Value>
            <Obj>
              <type>2</type>
              <id>5</id>
              <name>empty</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <const_type>0</const_type>
          <content>0</content>
        </item>
      </consts>
      <blocks class_id="15" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_3">
          <Obj>
            <type>3</type>
            <id>4</id>
            <name>main</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>1</count>
            <item_version>0</item_version>
            <item>3</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="17" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_4">
          <id>6</id>
          <edge_type>1</edge_type>
          <source_obj>5</source_obj>
          <sink_obj>3</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="19" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="20" tracking_level="1" version="0" object_id="_5">
        <mId>1</mId>
        <mTag>main</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>4</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>0</mMinLatency>
        <mMaxLatency>0</mMaxLatency>
        <mIsDfPipe>0</mIsDfPipe>
        <mDfPipe class_id="-1"/>
      </item>
    </cdfg_regions>
    <fsm class_id="22" tracking_level="1" version="0" object_id="_6">
      <states class_id="23" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="24" tracking_level="1" version="0" object_id="_7">
          <id>1</id>
          <operations class_id="25" tracking_level="0" version="0">
            <count>3</count>
            <item_version>0</item_version>
            <item class_id="26" tracking_level="1" version="0" object_id="_8">
              <id>1</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="26" object_id="_9">
              <id>2</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="26" object_id="_10">
              <id>3</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="27" tracking_level="0" version="0">
        <count>0</count>
        <item_version>0</item_version>
      </transitions>
    </fsm>
    <res class_id="28" tracking_level="1" version="0" object_id="_11">
      <dp_component_resource class_id="29" tracking_level="0" version="0">
        <count>0</count>
        <item_version>0</item_version>
      </dp_component_resource>
      <dp_expression_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_register_resource>
      <dp_dsp_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_dsp_resource>
      <dp_component_map class_id="30" tracking_level="0" version="0">
        <count>0</count>
        <item_version>0</item_version>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="31" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="32" tracking_level="0" version="0">
        <first>3</first>
        <second class_id="33" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="34" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="35" tracking_level="0" version="0">
        <first>4</first>
        <second class_id="36" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="37" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </regions>
    <dp_fu_nodes class_id="38" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="39" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_io>
    <return_ports>
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="40" tracking_level="0" version="0">
        <first>ap_return</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>3</item>
        </second>
      </item>
    </return_ports>
    <dp_mem_port_nodes class_id="42" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="43" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_port_io_nodes>
    <port2core class_id="44" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </port2core>
    <node2core>
      <count>0</count>
      <item_version>0</item_version>
    </node2core>
  </syndb>
</boost_serialization>
