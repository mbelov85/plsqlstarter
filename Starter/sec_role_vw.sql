CREATE OR REPLACE FORCE VIEW sec_role_vw
AS
SELECT app_cd,
       role_id,
       role_nm,
       role_descr
  FROM sec_role sr,
       app_vw   a
 WHERE sr.app_id = a.app_id
--------------------------------------------------------------------------------
-- View to make the SEC_ROLE table more user-friendly, replacing IDs with names.
--
--Artisan      Date      Comments
--============ ========= ======================================================
--bcoulam      2008Mar07 Initial creation.
--bcoulam      2008Aug26 Pointed to APP_VW to filter in only the current app's
--                       security settings.
--------------------------------------------------------------------------------
/
