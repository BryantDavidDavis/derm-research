package DermResearch::App;
use Dancer2;


our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/contact' => sub {
	template 'contact';
};

get '/participate' => sub {
	template 'participate';
};

get '/staff' => sub {
	template 'staff';
};

prefix '/experience' => sub {
	get '/studies' => sub {
		my @header_inserts = ('/derm-research-studies.json');
		my @footer = ('/javascripts/handlebars-v4.0.4.js');
		my @footer_inserts = (
			'experience/studies/footer-inserts.tt'
		);
		my @handlebars_templates = (
			'experience/studies/studies-accordion.handlebars'
		);
		template 'experience/studies' => {
			header_inserts => \@header_inserts,
			footer => \@footer,
			handlebars_templates => \@handlebars_templates,
			footer_inserts => \@footer_inserts
		};
	};

	get '/companies' => sub {
		template 'experience/companies';
	};

	get '/facilities' => sub {
		template 'experience/facilities';
	};
};

true;
