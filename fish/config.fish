# Clion
set --export PATH $PATH $HOME/clion-2016.1.1/bin
# CMake 3.3
set --export PATH $PATH $HOME/clion-2016.1.1/bin/cmake/bin

# MIPS cross compiler
set --export PATH $PATH $HOME/mgc/embedded/codebench/bin

# Init vivado
#set --export XILINX_VIVADO $HOME/Software/Vivado/2016.1
#set --export PATH $PATH $HOME/Software/Vivado/2016.1/bin
set --export XILINX_VIVADO $HOME/Xilinx/Vivado/2015.2
set --export PATH $PATH $HOME/Xilinx/Vivado/2015.2/bin

# QEMU
set --export PATH $PATH $HOME/qemu/bin/debug/native/i386-softmmu

function conv
    iconv -f GB2312 -t UTF8 $argv -o $argv
end

function reconv
    iconv -f UTF8 -t GB2312 $argv -o $argv
end

# '_' FTW!
function sp2ud
    for i in $argv
        echo "mv $i"
        mv $i (echo $i | sed "s/ /_/g")
    end
end
