# Set alternative to PHP since Zend Server uses a different folder
alternative-php:
  cmd.run:
    - name: update-alternatives --install /usr/bin/php php /usr/local/zend/bin/php 1
    - require:
      - pkg: zendserver
    - unless: test -L /usr/bin/php

alternative-pear:
  cmd.run:
    - name: update-alternatives --install /usr/bin/pear pear /usr/local/zend/bin/pear 1
    - require:
      - pkg: zendserver
    - unless: test -L /usr/bin/pear

alternative-pecl:
  cmd.run:
    - name: update-alternatives --install /usr/bin/pecl pecl /usr/local/zend/bin/pecl 1
    - require:
      - pkg: zendserver
    - unless: test -L /usr/bin/pecl

alternative-php-config:
  cmd.run:
    - name: update-alternatives --install /usr/bin/php-config php-config /usr/local/zend/bin/php-config 1
    - require:
      - pkg: zendserver
    - unless: test -L /usr/bin/php-config

alternative-phpize:
  cmd.run:
    - name: update-alternatives --install /usr/bin/phpize phpize /usr/local/zend/bin/phpize 1
    - require:
      - pkg: zendserver
    - unless: test -L /usr/bin/phpize
