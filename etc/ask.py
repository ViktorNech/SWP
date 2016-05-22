CONFIG = {
    #'mode': 'wsgi',
    'working_dir': '/home/box/web/ask',
    # 'python': '/usr/bin/python',
    'args': (
        '--bind=0.0.0.0:8008',
        '--workers=2',
        '--timeout=30',
	'--daemon',
        'ask.wsgi',
    ),
}
