#!/usr/bin/gnuplot -persist

load "engine_cuda.plt"

set title "Encryption performance with ECB (CUDA)" 
set output "ecb-encrypt_cuda.pdf"

plot 'bf-ecb_gpu_cudamrg.dat' using ($2/1048576) title 'Blowfish ECB GPU' with linespoints, \
     'bf-ecb_cpu.dat' using ($2/1048576) title 'Blowfish ECB CPU' with linespoints, \
     'idea-ecb_gpu_cudamrg.dat' using ($2/1048576) title 'IDEA ECB GPU' with linespoints, \
     'idea-ecb_cpu.dat' using ($2/1048576) title 'IDEA ECB CPU' with linespoints, \
     'des-ecb_gpu_cudamrg.dat' using ($2/1048576) title 'DES ECB GPU' with linespoints, \
     'des-ecb_cpu.dat' using ($2/1048576) title 'DES ECB CPU' with linespoints, \
     'cast5-ecb_gpu_cudamrg.dat' using ($2/1048576) title 'CAST5 ECB GPU' with linespoints, \
     'cast5-ecb_cpu.dat' using ($2/1048576) title 'CAST5 ECB CPU' with linespoints, \
     'camellia-128-ecb_gpu_cudamrg.dat' using ($2/1048576) title 'Camellia 128 ECB GPU' with linespoints, \
     'camellia-128-ecb_cpu.dat' using ($2/1048576) title 'Camellia 128 ECB CPU' with linespoints

set title "Encryption performance with ECB (OpenCL)" 
set output "ecb-encrypt_opencl.pdf"

plot 'bf-ecb_gpu_opencl.dat' using ($2/1048576) title 'Blowfish GPU' with linespoints, \
     'bf-ecb_cpu.dat' using ($2/1048576) title 'Blowfish CPU' with linespoints, \
     'idea-ecb_gpu_opencl.dat' using ($2/1048576) title 'IDEA GPU' with linespoints, \
     'idea-ecb_cpu.dat' using ($2/1048576) title 'IDEA CPU' with linespoints, \
     'des-ecb_gpu_opencl.dat' using ($2/1048576) title 'DES GPU' with linespoints, \
     'des-ecb_cpu.dat' using ($2/1048576) title 'DES CPU' with linespoints, \
     'cast5-ecb_gpu_opencl.dat' using ($2/1048576) title 'CAST5 GPU' with linespoints, \
     'cast5-ecb_cpu.dat' using ($2/1048576) title 'CAST5 CPU' with linespoints, \
     'camellia-128-ecb_gpu_opencl.dat' using ($2/1048576) title 'Camellia 128 GPU' with linespoints, \
     'camellia-128-ecb_cpu.dat' using ($2/1048576) title 'Camellia 128 CPU' with linespoints

set title "Encryption performance Blowfish-ECB" 
set output "ecb-encrypt_bf.pdf"
plot 'bf-ecb_gpu_cudamrg.dat' using ($2/1048576) title 'Blowfish CUDA' with linespoints, \
     'bf-ecb_gpu_opencl.dat' using ($2/1048576) title 'Blowfish OpenCL' with linespoints, \
     'bf-ecb_cpu.dat' using ($2/1048576) title 'Blowfish CPU' with linespoints

set title "Encryption performance CAST5-ECB" 
set output "ecb-encrypt_cast5.pdf"
plot 'cast5-ecb_gpu_cudamrg.dat' using ($2/1048576) title 'CAST5 CUDA' with linespoints, \
     'cast5-ecb_gpu_opencl.dat' using ($2/1048576) title 'CAST5 OpenCL' with linespoints, \
     'cast5-ecb_cpu.dat' using ($2/1048576) title 'CAST5 CPU' with linespoints

set title "Encryption performance DES-ECB" 
set output "ecb-encrypt_des.pdf"
plot 'des-ecb_gpu_cudamrg.dat' using ($2/1048576) title 'DES CUDA' with linespoints, \
     'des-ecb_gpu_opencl.dat' using ($2/1048576) title 'DES OpenCL' with linespoints, \
     'des-ecb_cpu.dat' using ($2/1048576) title 'DES CPU' with linespoints

set title "Encryption performance IDEA-ECB" 
set output "ecb-encrypt_idea.pdf"
plot 'idea-ecb_gpu_cudamrg.dat' using ($2/1048576) title 'IDEA CUDA' with linespoints, \
     'idea-ecb_gpu_opencl.dat' using ($2/1048576) title 'IDEA OpenCL' with linespoints, \
     'idea-ecb_cpu.dat' using ($2/1048576) title 'IDEA CPU' with linespoints

set title "Encryption performance Camellia-ECB" 
set output "ecb-encrypt_camellia-128.pdf"
plot 'camellia-128-ecb_gpu_cudamrg.dat' using ($2/1048576) title 'Camellia CUDA' with linespoints, \
     'camellia-128-ecb_gpu_opencl.dat' using ($2/1048576) title 'Camellia OpenCL' with linespoints, \
     'camellia-128-ecb_cpu.dat' using ($2/1048576) title 'Camellia CPU' with linespoints