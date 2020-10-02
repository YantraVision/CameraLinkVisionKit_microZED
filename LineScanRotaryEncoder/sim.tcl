exec rm -rf ./RotaryEncoderSim ./viv*
create_project RotaryEncoderSim RotaryEncoderSim -part xc7z020clg400-1
add_files -norecurse ./src/rotarytriggen.v
add_files -fileset sim_1 -norecurse ./tb/testb.v
import_files -force -norecurse
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
launch_simulation
