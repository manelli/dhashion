# Dhashion
### _Lagrangian dHash for Ruby_
---

## Installation

    $ gem install dhashion

## Usage

```ruby
img1 = Dhashion::Image.new('img1_filepath.jpg')
img2 = Dhashion::Image.new('img2_filepath.jpg')

Dhashion.distance(img1.fingerprint, img2.fingerprint) 
```

## Description
Dhashion is a Ruby implementation for the _dHash_ (difference hashing) algorithm.
Unlike other perceptual hashing algorithms like _aHash_ (average values) and
_pHash_ (frequency patterns), _dHash_ tracks gradients.

Dhashion specifically uses ImageMagick's _Lagrange_ filter when resizing the
image.

## Additional information
* http://www.hackerfactor.com/blog/?/archives/529-Kind-of-Like-That.html
* http://www.hackerfactor.com/blog/index.php?/archives/432-Looks-Like-It.html
* http://www.imagemagick.org/Usage/filter/#lagrange
