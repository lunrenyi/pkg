pkg:info "ffmpeg"

x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/* -version' <<A
ffmpeg version N-60236-gffb000fff8-static https://johnvansickle.com/ffmpeg/  Copyright (c) 2000-2022 the FFmpeg developers
built with gcc 8 (Debian 8.3.0-6)
configuration: --enable-gpl --enable-version3 --enable-static --disable-debug --disable-ffplay --disable-indev=sndio --disable-outdev=sndio --cc=gcc --enable-fontconfig --enable-frei0r --enable-gnutls --enable-gmp --enable-libgme --enable-gray --enable-libaom --enable-libfribidi --enable-libass --enable-libvmaf --enable-libfreetype --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libopenjpeg --enable-librubberband --enable-libsoxr --enable-libspeex --enable-libsrt --enable-libvorbis --enable-libopus --enable-libtheora --enable-libvidstab --enable-libvo-amrwbenc --enable-libvpx --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxml2 --enable-libdav1d --enable-libxvid --enable-libzvbi --enable-libzimg
libavutil      57. 18.100 / 57. 18.100
libavcodec     59. 20.100 / 59. 20.100
libavformat    59. 17.100 / 59. 17.100
libavdevice    59.  5.100 / 59.  5.100
libavfilter     8. 25.100 /  8. 25.100
libswscale      6.  5.100 /  6.  5.100
libswresample   4.  4.100 /  4.  4.100
libpostproc    56.  4.100 / 56.  4.100
A

