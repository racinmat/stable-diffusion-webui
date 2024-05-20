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

switching remotes on tlab:
```bash
cd stable-diffusion-webui
git remote -v
git remote rename origin original
git remote -v
git remote add origin git@github.com:racinmat/stable-diffusion-webui.git
git remote -v
```

some downloaded models:
https://civitai.com/models/133005?modelVersionId=357609
https://civitai.com/models/122793/fenrisxl
https://civitai.com/models/260460/turbo-diffusion-xl
https://civitai.com/models/228772/sleipnir-sdxl-turbo-hybrid
https://civitai.com/models/229760/vibrant-horizon-turbo-xl
https://civitai.com/models/112902?modelVersionId=341981
https://civitai.com/models/112902?modelVersionId=354657
https://civitai.com/models/112902?modelVersionId=351306

notes for xyz plots:
prompt:
`young man, 1man, cloudy_sky, building, moonlight, moon, night, (dark theme:1.3), light, fantasy, ginger, longer hair`
prompt s/r:`"young man, 1man",  1girl, woman`
prompt s/r:`building, moonlight, moon, night, (dark theme:1.3), light, fantasy`

