moving the outputs to the drive and putting symlink there

```bash
cd ~/stable-diffusion-webui
# moving the outputs
mv outputs /space/racinsky/stable-diffusion-webui/
# symlinking outputs
ln -s /space/racinsky/stable-diffusion-webui/outputs ~/stable-diffusion-webui/outputs
ll -h # to check if everything is ok 
```
moving the cache to drive, it's also quite big
```bash
cd ~
# moving the cache
mv .cache /space/racinsky/.cache
# symlinking cache
ln -s /space/racinsky/.cache ~/.cache
ll -h # to check if everything is ok 
```
the rest of moving is in the `C:\Projects\text-generation-experiments\README.md`.

updating the stable diffusion from upstream