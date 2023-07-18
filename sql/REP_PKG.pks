CREATE OR REPLACE PACKAGE XXPS.rep_pkg AS
AS
  
  gv_vcPackageName VARCHAR2(30) := 'REP_PKG';

  PROCEDURE CREATE_ADMIN (
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
      po_return_mesg          OUT NOCOPY VARCHAR2);

  PROCEDURE UPDATE_ADMIN (
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
      po_return_mesg          OUT NOCOPY VARCHAR2);

  PROCEDURE DELETE_ADMIN (
      pi_log_level            IN NUMBER DEFAULT 2,
      pi_org_admin_id         IN NUMBER,
      pi_updated_by           IN VARCHAR2,
      po_records_changed      OUT NOCOPY NUMBER,
      po_records_action       OUT NOCOPY VARCHAR2,
      po_return_status        OUT NOCOPY VARCHAR2,
      po_return_mesg          OUT NOCOPY VARCHAR2);

END rep_pkg;
/
