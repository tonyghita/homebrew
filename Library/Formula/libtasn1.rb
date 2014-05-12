require 'formula'

class Libtasn1 < Formula
  homepage 'http://www.gnu.org/software/libtasn1/'
  url 'http://ftpmirror.gnu.org/libtasn1/libtasn1-3.5.tar.gz'
  mirror 'http://ftp.gnu.org/gnu/libtasn1/libtasn1-3.5.tar.gz'
  sha1 '7e38f027c765eb5434bf050aef0f20aee45e3420'

  bottle do
    cellar :any
    sha1 "ea965f6a6a987c3fd7b687efd24ff1ee7c35f98c" => :mavericks
    sha1 "86b57809fd4db333e400da028432aa0f7661c3f6" => :mountain_lion
    sha1 "6d31d4239ce62fb2721e921036d05ada7e68e955" => :lion
  end

  option :universal

  def install
    ENV.universal_binary if build.universal?
    system "./configure", "--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make install"
  end
end
