"auto input UVM class
map<F4> :call UVM_Class()<CR>
function UVM_Class()
  call append(0, "\class class_name extends uvm_class_nam;")
  call append(1, "  ")
  call append(2, "  string               tID;")
  call append(3, "  ")
  call append(4, "  //different uvmcomponent, different arguments")
  call append(5, "  function new(string name, uvm_component parent);")
  call append(6, "    super.new(name, parent);")
  call append(7, "    tID = get_type_name();")
  call append(8, "    tID = tID.toupper();")
  call append(9, "  endfunction : new")
  call append(10, " ")
  call append(11, "  //some are object")
  call append(12, "  `uvm_component_utils(class_name)")
  call append(13, "")
  call append(14, "  extern virtual function void build_phase(uvm_phase phase);")
  call append(15, "  extern virtual function void connect_phase(uvm_phase phase);")
  call append(16, "  extern task main_phase(spi_tr m_tr);")
  call append(17, "")
  call append(18, "endclass : spi_driver")
  call append(19, "")
  call append(20, "function void class_name::build_phase(uvm_phase phase);")
  call append(21, "  super.build_phase(phase);")
  call append(22, "endfunction : build_phase")
  call append(23, "")
  call append(24, "function void class_name::build_phase(uvm_phase phase);")
  call append(25, "  super.build_phase(phase);")
  call append(26, "endfunction : build_phase")
  call append(27, " ")
  call append(28, "task main_phase(uvm_phase phase);")
  call append(29, "endtask : main_phase")
endfunction

"definition
map<F5> :call UVM_Definition()<CR>
function UVM_Definition()
  call append(0, "\`ifndef __class_name_SV_")
  call append(1, "`define  __class_name_SV_")
  call append(2, "`endif")
endfunction