function RhytPart=Rhythm()
%Return Rhythm part of music
% get notes needed and type music sheet and return music

% get notes needed
[F,h,fd,f,ed,e,s,~,~,~,~,~,~,sblk] = ...
    Tone(@GuitarRy,3,6); % use style: guitar in rhythm, tones are in [C3,C6)
% set baseline: C4
F=@(n) F(n+7);
h=@(n) h(n+7);
fd=@(n) fd(n+7);
f=@(n) f(n+7);
ed=@(n) ed(n+7);
e=@(n) e(n+7);
s=@(n) s(n+7);

%% First Paragraph
p1=[e(-4)+e(7)+e(12),s(5),e(7),e(12),e(1)+e(10)+e(12),e(5),e(8),s(12),e(8),...%section
    e(2)+e(9)+e(11),s(6),e(9)+e(11),e(9)+e(12),e(-2)+e(7)+e(12),s(5),s(7),s(12),...
    s(-3),s(5),s(7),s(12),...%sec
    e(-4)+e(7)+e(12),s(5),e(7),e(12),e(1)+e(10)+e(12),e(5),e(8),s(12),e(8),...%sec
    e(2)+e(9)+e(12),s(6),e(9)+e(11),e(9)+e(12),h(-2)+h(7)+h(12),sblk,...%sec
    ];
%% Paragraph 2
p2=[e(-4)+e(7)+e(12),s(5),e(7),e(-4)+e(12),e(1)+e(10)+e(12),e(5),e(8),s(12),e(8)+e(1),...%sec
    e(2)+e(9)+e(11),s(6),e(9)+e(11),e(2)+e(9)+e(12),e(-2)+e(7)+e(12),s(5),s(7),s(-2)+s(12),...
    s(-3),s(5),s(7),s(-3)+s(12),...%sec
    e(-4)+e(7)+e(12),s(5),e(7),e(-4)+e(12),e(1)+e(10)+e(12),e(5),e(8),s(12),e(8)+e(1),...%sec
    e(2)+e(9)+e(11),s(6),e(9)+e(11),e(2)+e(9)+e(12),e(-2)+e(7)+e(12),s(5),s(7),s(-2)+s(12),...
    s(-3),s(5),s(7),s(-3)+s(12),...%sec
    e(-4)+e(7)+e(12),s(5),e(7),e(-4)+e(12),e(1)+e(10)+e(12),e(5),e(8),s(12),e(8)+e(1),...%sec
    e(2)+e(9)+e(11),s(6),e(9)+e(11),e(2)+e(9)+e(12),e(-2)+e(7)+e(12),s(5),s(7),s(-2)+s(12),...
    s(-3),s(5),s(7),s(-3)+s(12),...%sec
    e(-4)+e(7)+e(12),s(5),e(7),e(-4)+e(12),e(1)+e(10)+e(12),e(5),e(8),s(12),e(8)+e(1),...%sec
    e(2)+e(9)+e(11),s(6),e(9)+e(11),s(2)+s(9)+s(12),e(5),s(-2),s(5),s(7),e(-2)+e(12),s(7),e(5),...%sec
    ];
%% Paragraph 3
p3=[repmat([s(1),s(3),s(5),e(8),s(5),s(3),s(1)+s(5)],1,2),...%sec
    repmat([s(0),s(2),s(5),e(7),s(5),s(2),s(0)+s(5)],1,2),...%sec
    repmat([s(1),s(3),s(5),e(8),s(5),s(3),s(1)+s(5)],1,2),...%sec
    repmat([s(-2),s(2),s(5),e(7),s(5),s(2),s(-2)+s(5)],1,2),...%sec
    ];
%% Paragraph 4
p4=[...
    s(1),s(3),s(8),e(10),s(8),e(1)+e(5),s(2),s(6),s(9),e(11),s(9),e(2)+e(6),...%sec
    e(2)+e(6)+e(7),s(2)+s(6)+s(7),e(2)+e(6)+e(7),e(4)+e(8)+e(11),e(-4)+e(7)+e(10),...
    s(3),s(5),s(7),e(10),s(7),s(3)+s(5),...%sec
    s(-2),s(5),s(8),e(10),s(5),s(3),s(-2)+s(5),s(-3),s(5),s(8),e(10),s(8),s(5),s(-3)+s(5),...%sec
    e(0)+e(9),e(4)+e(6),e(0)+e(10),e(4)+e(6),h(0)+h(9)+h(11),...%sec
];
%% Paragraph Main1
p5=[...
    e(-2)+e(10)+e(8),s(6),e(8),ed(10),e(2)+e(9)+e(11),s(6),e(9),ed(11),...%sec
    e(0)+e(6)+e(9),s(2),e(6),ed(9),e(-4)+e(5)+e(7),s(3),e(5),ed(7),...%sec
    e(-1)+e(5)+e(8),s(3),e(10),ed(10),e(2)+e(9),s(6),e(9),ed(9),...%sec
    e(0)+e(4)+e(6)+e(9),s(6),e(9),ed(11),e(-4)+e(0)+e(2)+e(5)+e(7),s(3),e(5),s(10),e(7)...%sec
    ];
%% Paragraph Main2
p6=[...
    e(-1)+e(10)+e(8),s(6),e(8),s(10),e(8),e(9)+e(11)+e(2),s(6),e(9),s(11),e(9),...%sec
    e(0)+e(9)+e(6),s(2),e(6),s(9),e(2),e(-4)+e(5)+e(7),s(2),e(5),s(10),e(5),...%sec
    s(-2),s(5),s(8),e(10),s(8),e(5),s(-3),s(5),s(8),e(10),s(8),e(5),...%sec
    e(0),e(4)+e(6),e(0),e(4)+e(6),h(0)+h(9),...%sec
];
%% return
RhytPart=[
    p1,...
    1/4.*p2,...
    1/4.*p3,...
    1/4.*p4,...
    1/4.*p5,...
    1/4.*p6
    ];
end