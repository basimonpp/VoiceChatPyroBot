RUN apt-get update && apt upgrade -y && apt-get install sudo -y
RUN git clone https://github.com/inukaasith/VoiceChatPyroBot.git tgvcbot && cd tgvcbot
RUN pip(3) install -U -r requirements.txt
RUN sudo apt install xrdp pulseaudio mplayer screen
RUN cd ~ && wget https://telegram.org/dl/desktop/linux -O tdesktop.tar.xz && tar -xf tdesktop.tar.xz && rm tdesktop.tar.xz
RUN echo "~/Telegram/Telegram" >~/.xsession
RUN bash pa.sh
RUN screen -S vcbot
RUN python(3) bot.py
