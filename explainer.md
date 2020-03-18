## Explainer
This specification extends MediaStreamTrack to provide a media-content hint attribute. This optional hint permits MediaStreamTrack consumers such as PeerConnection (defined in [webrtc]) or MediaRecorder (defined in [mediastream-recording]) to encode or process track media with methods more appropriate to the type of content that is being consumed.

Adding a media-content hint provides a way for a web application to help these consumers make more informed decisions about what encoder parameters and processing algorithms they should use on the consumed content.

### Background
Algorithms used for processing speech and music differ greatly. Echo-cancellation algorithms developed for speech-type content might not work well on music, and noise-suppression algorithms might remove drum snares or other "noisy" content. While this makes speech more intelligible it is less appropriate for music signals.

For video, webcam content often require denoising and is often intelligible even when downscaled or with high quantization levels. Screencast content of presentations or webpages with a lot of text content is completely unintelligible if the quantization levels are too high or if the content is downscaled or otherwise blurry.

Without automatic detection of media content, a MediaStreamTrack consumer can only make an educated guess. This guess may be based on assuming that screencast content, such as chrome.desktopCapture, contains text content and must use low quantization levels, and drop frames extensively to meet bitrate requirements. Another assumption is that regular USB video devices provide webcam video, and higher quantization levels and downscaling are acceptible.

While usually appropriate, this educated guess leads to sub-optimal settings when incorrect. This manifests as high framedropping when screencasting high-motion content such as a movie or streaming a video game and treating it as text. Treating highly-detailed content as regular webcam video on the other hand leads to too-blurry content when being either quantized or downscaled beyond readability to meet bitrate requirements. 

### What applications can do
In some cases the web application can make a more-educated guess or take user input to inform consumers of what kind of content is being encoded. A web application that streams video-game content would be able to preserve motion from desktop capture at the cost of individual frame detail. A music-studio application would be able to prevent noise suppression from removing snares from a music track.

These settings are not intended to replace encoder-level settings completely but rather complement them with a simpler hint that does not require broad knowledge of video encoders, audio-processing steps or more extensive tuning.
### Examples

A music application recording a microphone for later processing:
```
const stream = await getUserMedia([audio: true]);
stream.getAudioTracks()[0].contentHint = "music";
```

A shared gameplay watcher application, using screencapture to grab the gameplay:
```
const stream = await getDisplayMedia();
stream.getVideoTracks()[0].contentHint = "motion";
```
