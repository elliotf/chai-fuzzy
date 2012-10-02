# chai-fuzzy

Fuzzy matchers for chai based on underscore and inspired by jasmine.

Make assertions that values have all the same attributes and values without asserting strict object equality.

## Using

Also see the [tests](https://github.com/elliotf/chai-fuzzy/test/) and [examples](https://github.com/elliotf/examples/).

### browser-side

include chai fuzzy after chai and underscore:

    <script src="underscore.js"></script>
    <script src="chai.js"></script>
    <script src="chai-fuzzy.js"></script>

### server-side

have chai use chai-fuzzy:

    var chai = require('chai');
    chai.use(require('chai-fuzzy'));

## Assertions


### like(value)

compare object attributes and values rather than checking to see if they're the same reference

    var subject = {a: 'a'};
    subject.should.be.like({a: 'a'});
    subject.should.not.be.like({x: 'x'});
    subject.should.not.be.like({a: 'a', b: 'b'});
    expect(subject).to.be.like({a: 'a'});
    expect(subject).not.to.be.like({x: 'x'});
    expect(subject).not.to.be.like({a: 'a', b: 'b'});

    var subject = ['a'];
    subject.should.be.like(['a']);
    subject.should.not.be.like(['x']);
    subject.should.not.be.like(['a', 'b']);
    expect(subject).to.be.like(['a']);
    expect(subject).not.to.be.like(['x']);
    expect(subject).not.to.be.like(['a', 'b']);

## containOneLike(value)

check the first level of the container for a value like the one provided

    var subject = {
      a:   'alphabet'
      , b: 'butternut'
      , c: {
        name:       'chowder'
        , attributes: [
          'scales'
          , 'fins'
        ]
      }
      , x: 'xylophone'
      , z: 'xylophone'
    };
    subject.should.containOneLike({
      name:         'chowder'
      , attributes: [
        'scales', 'fins'
      ]
    });
    subject.should.not.containOneLike({
      name:         'chowder'
      , attributes: [
        'scales', 'fins', 'cream'
      ]
    });
    subject.should.containOneLike('xylophone');
    subject.should.not.containOneLike('cow patties');

    // same for arrays

# Thanks

Thanks to [Davis](http://github.com/infews/ "Davis") for passing along the idea of using underscore rather than cribbing parts of jasmine.

