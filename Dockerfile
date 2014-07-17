FROM  abevoelker/ruby
RUN apt-get update
RUN apt-get install -y libmagickcore-dev libmagickwand-dev
RUN apt-get install -y uuid-runtime

WORKDIR /root
RUN echo 2 #cache bust
RUN git clone https://github.com/tsnow/colortoy.git
WORKDIR /root/colortoy
ADD colortoy.sh /root/colortoy/
RUN chmod a+x /root/colortoy/colortoy.sh
RUN bundle install --path=vendor/
RUN chmod +x /root/colortoy/colortoy.rb
CMD [-]
ENTRYPOINT bundle exec ./colortoy.sh -



