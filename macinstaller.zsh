# Request Sudo Permission
echo "Request sudo"
sudo echo "Request sudo done"

# Install brew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/oein/.zprofile;
eval "$(/opt/homebrew/bin/brew shellenv)";

# Install node version manager
brew install nvm;
mkdir ~/.nvm;

# Temply set nvm
export NVM_DIR="$HOME/.nvm";
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm;
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion;

# Install node 16
nvm install 16;
nvm use 16;

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install wget
brew install wget

# Install p10k
cd ~/
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
wget https://raw.githubusercontent.com/Oein/MacIDE_Installer/main/.p10k.zsh
wget https://github.com/Oein/MacIDE_Installer/raw/main/p10kTheme.zsh -o ~/powerlevel10k/powerlevel10k.zsh-theme

# Install iTerm
brew install --cask iterm2

# Install Spotify
brew install --cask spotify

# Install chrome
brew install --cask google-chrome

# Install vsc