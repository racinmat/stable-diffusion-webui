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


tries out models:
https://civitai.com/models/90642/animesh
https://civitai.com/models/112902?modelVersionId=341981
https://civitai.com/models/314325/countersushi-stable-cascade
https://civitai.com/models/353284/sotediffusion-wuerstchen3?modelVersionId=485843
https://civitai.com/models/316692/somniumsc?modelVersionId=377057
https://civitai.com/models/117259/anime-art-diffusion-xl
https://civitai.com/models/124189/anime-illust-diffusion-xl

downloading civitai models to server
```
cd /space/racinsky/stable-diffusion-webui/models/Stable-diffusion
# todo: fix these commands
wget -q "https://civitai.com/api/download/models/377057" -o "somniumsc_v11.safetensors"
wget -q "https://civitai.com/api/download/models/485843" -o "sottediffusion_alpha2.safetensors"
wget -q "https://civitai.com/api/download/models/365424" -o "countersushiStable_countersushiV03.safetensors"
wget -q "https://civitai.com/api/download/models/413937" -o "atomixAnimeXL_v10.safetensors"
wget -q "https://civitai.com/api/download/models/128592" -o "animeArtDiffusionXL_alpha3.safetensors"
mv 128592 animeArtDiffusionXL_alpha3.safetensors
mv 365424 countersushiStable_countersushiV03.safetensors
mv 377057 somniumsc_v11.safetensors
mv 485843 sottediffusion_alpha2.safetensors
mv 413937 atomixAnimeXL_v10.safetensors
cd /space/racinsky/stable-diffusion-webui/models
wget -O "Stable-diffusion/animesh_PrunedV22.safetensors" "https://civitai.com/api/download/models/224732?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=f7890046a5bafe2b967eee2c32ac7c3f"
wget -O "VAE/vae-ft-mse-840000-ema-pruned_fp16.safetensors" "https://civitai.com/api/download/models/224732?type=VAE&format=SafeTensor&token=f7890046a5bafe2b967eee2c32ac7c3f"
mv VAEPvae-ft-mse-840000-ema-pruned_fp16.safetensors VAE/vae-ft-mse-840000-ema-pruned_fp16.safetensors

wget -O "Stable-diffusion/counterfeitV30_v30.safetensors" "https://civitai.com/api/download/models/57618?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=f7890046a5bafe2b967eee2c32ac7c3f"
wget -O "Stable-diffusion/raemuXL_v35Lightning.safetensors" "https://civitai.com/api/download/models/470847?token=f7890046a5bafe2b967eee2c32ac7c3f"
```
