# Update package lists
sudo apt update

# Install required dependencies to add a new PPA
sudo apt install -y software-properties-common

# Add the deadsnakes PPA to get newer Python versions
sudo add-apt-repository ppa:deadsnakes/ppa

# Update package lists again after adding the new repository
sudo apt update

# Install Python 3.8
sudo apt install -y python3.8 python3.8-venv python3.8-dev


echo "Creating the virtual environment directory..."
mkdir -p python3.8_env

echo "Entering the environment directory..."
cd python3.8_env

echo "Creating the virtual environment..."
python3.8 -m venv venv_3.8

echo "Activating the virtual environment..."
source python3.8_env/venv_3.8/bin/activate
echo "Setup complete. Virtual environment is active."

