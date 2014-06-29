package unit;

import buddy.*;
using buddy.Should;

import cocktail.url.URL;

class TestMain extends BuddySuite implements Buddy {

    public function new()
    {
        describe('URL parsing and serializing', function () {
            describe('#fromString', function () {
                it('should parse an URL', function () {
                    var url = URL.fromString('http://www.domain.com/');
                    url.host.should.be('www.domain.com');
                    url.scheme.should.be('http');
                });

                it('should parse an URL with a path', function () {
                    var url = URL.fromString('http://www.domain.com/resource/');
                    url.path.should.be('/resource/');
                });
            });
        });
    }
}
