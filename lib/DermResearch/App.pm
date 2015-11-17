package DermResearch::App;
use Dancer2;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/contact' => sub {
	template 'contact';
};

prefix '/experience' => sub {
	get '/studies' => sub {
		template 'experience/studies';
	};

	get '/companies' => sub {
		template 'experience/companies';
	};
};

true;
