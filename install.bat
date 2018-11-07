echo OFF
echo Make Sure You Are Running an Elevated Shell
copy .vimrc "C:\Program Files (x86)\Vim\_vimrc"
echo Copied .vimrc to C:\Program Files (x86)\Vim\_vimrc
echo Cloning Vundle to %USERPROFILE%\.vim\bundle
c:
git clone https://github.com/Vundlevim/Vundle.vim %USERPROFILE%\.vim\bundle\Vundle.vim
vim +PluginInstall +qall
echo Installed all plugins except YCM
echo Installing YCM now
cd %USERPROFILE%\.vim\bundle\Vundle.vim\YouCompleteMe\
python install.py --clang-completer
