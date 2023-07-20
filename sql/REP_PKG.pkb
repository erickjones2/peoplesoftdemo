-- 07/20/2023 change 4
CREATE OR REPLACE PACKAGE BODY XXPS.rep_pkg IS

PROCEDURE CREATE_ADMIN(
      pi_log_level            IN NUMBER DEFAULT 2,
      pi_org_admin_id         IN NUMBER,
      pi_admin_email          IN VARCHAR2,
      pi_parent_org_dtl_id    IN NUMBER,
      pi_org_sourced_id       IN VARCHAR2,
      pi_start_date           IN DATE,
      pi_end_date             IN DATE,
      pi_is_primary           IN VARCHAR2,
      pi_created_by           IN VARCHAR2,
      po_org_admin_id         OUT NOCOPY NUMBER,
      po_records_changed      OUT NOCOPY NUMBER,
      po_records_action       OUT NOCOPY VARCHAR2,
      po_return_status        OUT NOCOPY VARCHAR2,
      po_return_mesg          OUT NOCOPY VARCHAR2
  ) IS
query_str		VARCHAR2(4000);
vPrimary VARCHAR2(1);
vStartDate DATE;
vEndDate DATE;
vAdminId NUMBER(30,0);
vAdminEmail VARCHAR2(128);
vParentOrgDtlID NUMBER(30,0);
vOrgSourcedId VARCHAR2(30);
vCreatedBy VARCHAR2(75);
vNum NUMBER;
vChr VARCHAR2(1);

BEGIN
  NULL;
END CREATE_ADMIN;

PROCEDURE UPDATE_ADMIN(
      pi_log_level            IN NUMBER DEFAULT 2,
      pi_org_admin_id         IN NUMBER,
      pi_org_dtl_id           IN NUMBER,
      pi_start_date           IN DATE,
      pi_end_date             IN DATE,
      pi_is_primary           IN VARCHAR2,
      pi_inactive             IN VARCHAR2,
      pi_updated_by           IN VARCHAR2,
      po_records_changed      OUT NOCOPY NUMBER,
      po_records_action       OUT NOCOPY VARCHAR2,
      po_return_status        OUT NOCOPY VARCHAR2,
      po_return_mesg          OUT NOCOPY VARCHAR2
  ) IS
query_str		VARCHAR2(4000);
vPrimary VARCHAR2(1);
vInactive VARCHAR2(1);
vAdminEmail VARCHAR2(128);
vOrgDtlID NUMBER(30,0);
vOrgAdminId NUMBER(30,0);
vUpdatedBy VARCHAR2(75);
vNum NUMBER;
vChr VARCHAR2(1);

BEGIN
  NULL;
END UPDATE_ADMIN;

PROCEDURE DELETE_ADMIN(
      pi_log_level            IN NUMBER DEFAULT 2,
      pi_org_admin_id         IN NUMBER,
      pi_updated_by           IN VARCHAR2,
      po_records_changed      OUT NOCOPY NUMBER,
      po_records_action       OUT NOCOPY VARCHAR2,
      po_return_status        OUT NOCOPY VARCHAR2,
      po_return_mesg          OUT NOCOPY VARCHAR2
  ) IS
query_str		VARCHAR2(4000);
vPrimary VARCHAR2(1);
vNum NUMBER;
vChr VARCHAR2(1);
vOrgAdminId NUMBER(30,0);
vUpdatedBy VARCHAR2(75);

BEGIN
 NULL;
END DELETE_ADMIN;

END rep_pkg;
/
