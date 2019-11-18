# A Homebrew tap for FFMPEG 3.0.1 based on LAME 3.99.5
Based on the ffmpeg@3.4 formula from this tap:  
[sy1vain/homebrew-ffmpeg](https://github.com/sy1vain/homebrew-ffmpeg).

<br/>Install ffmpeg 3.0.1 from this tap by running:
```bash
brew install shlomiuziel/ffmpeg/ffmpeg@3.0.1
```

Once ffmpeg was built successfully, you can link it as the default ffmpeg system-wide command by invoking:

```bash
brew link --force ffmpeg@3.0.1
```
_This step is required because it's a keg-only formula._

#### Note: On macOS OpenCL should be provided, however in linux you can install the OpenCL prerequisites independeptly: ####
```bash
sudo apt update
sudo apt install ocl-icd-opencl-dev
```
