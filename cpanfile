requires "Dancer2" => "0.161000";
requires 'Plack', '0.9980';
requires 'Starman', '0.2000';
requires "YAML::Syck", '1.29';

recommends "URL::Encode::XS"  => "0";
recommends "CGI::Deurl::XS"   => "0";
recommends "HTTP::Parser::XS" => "0";

on "test" => sub {
    requires "Test::More"            => "0";
    requires "HTTP::Request::Common" => "0";
};
