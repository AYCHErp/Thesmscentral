DELETE FROM auth.menu_access_policy
WHERE menu_id IN
(
 SELECT menu_id FROM core.menus
 WHERE app_name = 'tsc'
);

DELETE FROM auth.group_menu_access_policy
WHERE menu_id IN
(
 SELECT menu_id FROM core.menus
 WHERE app_name = 'tsc'
);

DELETE FROM core.menus
WHERE app_name = 'tsc';


EXECUTE core.create_app 'tsc', 'TheSmsCentral', 'The SMS Central', '1.0', 'MixERP Inc.', 'December 1, 2015', 'pink comments', '/dashboard/tsc', NULL;

EXECUTE core.create_menu 'tsc', 'Tasks', 'Tasks', '', 'lightning', '';
EXECUTE core.create_menu 'tsc', 'Setup', 'Setup', '/dashboard/tsc', 'configure', 'Tasks';

GO
DECLARE @office_id integer = core.get_office_id_by_office_name('Default');

EXECUTE auth.create_app_menu_policy
'Admin', 
@office_id, 
'tsc',
'{*}'
;

GO
