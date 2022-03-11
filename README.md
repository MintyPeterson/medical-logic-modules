## Medical logic modules
A collection of medical logic modules (MLMs) for healthcare systems. These MLMs were written against [Allscripts Sunrise™](https://uk.allscripts.com/solution/sunrise-epr).

### Adren Syntax

MLMs are implemented using Arden Syntax, a Health Level Seven International (HL7) ANSI-approved American National Standard language for encoding medical knowledge. Arden Syntax is used by individual clinicians, institutions, and vendors to develop clinical rules (that is, rules that directly impact patient care) using a standard format and language.

The [HL7 Arden Syntax group](http://www.hl7.org/special/Committees/arden/overview.cfm) represents and promotes its standard. 

## Scripts

The scripts directory contains interactive PowerShell scripts that can be used to generate MLM templates.

| Script | Description |
|--------|-------------|
| Generate-Document-MLM | Generates a document MLM template. |
| Generate-Event-MLM | Generates an event MLM template |
| Generate-Form-MLM | Generates a form MLM template. |

### Usage
1. Run the script.
2. Follow the on-screen instructions.

_Hint: On Windows, redirect the command output from the command line to the Windows clipboard using `clip`._

## Events

The following events can be used as a trigger for event MLMs.

| Event | Evoking object |
|------ |----------------|
| AdvancedVisitListDataActivate | AdvancedVisitListData |
| AdvancedVisitListDataDeactivate | AdvancedVisitListData |
| AdvancedVisitListDataDelete | AdvancedVisitListData |
| AdvancedVisitListDataEnter | AdvancedVisitListData |
| AdvancedVisitListDataModify | AdvancedVisitListData |
| AdvancedVisitListDataSetDeactivate | AdvancedVisitListData |
| AdvancedVisitListDataSetDelete | AdvancedVisitListData |
| AlertEnter | Alert |
| AllergyDelete | Allergy |
| AllergyDiscontinue | Allergy |
| AllergyEnter | Allergy |
| AllergyImport | Allergy |
| AllergyModify | Allergy |
| AllergyReject | Allergy |
| AnnotationDelete | Annotation |
| AnnotationDiscontinue | Annotation |
| AnnotationEnter | Annotation |
| AnnotationModify | Annotation |
| AuditLogEnter | AuditLog |
| AuthorizationConnect | Authorization |
| AuthorizationDisconnect | Authorization |
| AuthorizationEnter | Authorization |
| AuthorizationModify | Authorization |
| CareProviderVisitRoleDelete | CareProviderVisitRole |
| CareProviderVisitRoleDiscontinue | CareProviderVisitRole |
| CareProviderVisitRoleEnter | CareProviderVisitRole |
| CareProviderVisitRoleModify | CareProviderVisitRole |
| ClientDocumentEnter | ClientDocument |
| ClientDocumentModify | ClientDocument |
| SignificantEventDelete | ClientEventDeclaration |
| SignificantEventDiscontinue | ClientEventDeclaration |
| SignificantEventEnter | ClientEventDeclaration |
| SignificantEventModify | ClientEventDeclaration |
| ImplantEnter | ClientImplant |
| ImplantModify | ClientImplant |
| ImplantScan | ClientImplant |
| ClientCancel | ClientInfo |
| ClientEnter | ClientInfo |
| ClientMergeComplete | ClientInfo |
| ClientModify | ClientInfo |
| ClientMoveMRNComplete | ClientInfo |
| ContactDelete | ClientInfo |
| ContactEnter | ClientInfo |
| ContactModify | ClientInfo |
| AlertCheckingClientPrescription | ClientPrescription |
| OutpatientMedicationReviewLaunch | ClientPrescription |
| OutpatientMedicationReviewSave | ClientPrescription |
| PrescriptionApprove | ClientPrescription |
| PrescriptionDeny | ClientPrescription |
| PrescriptionEnter | ClientPrescription |
| PrescriptionInit | ClientPrescription |
| PrescriptionRenew | ClientPrescription |
| ClientVisitDischarge | ClientVisit |
| ClientVisitEnter | ClientVisit |
| ClientVisitMergeComplete | ClientVisit |
| ClientVisitModify | ClientVisit |
| ClientVisitMoveComplete | ClientVisit |
| OrderWorksheetSubmit | ClientVisit |
| CommentDelete | CommentDeclaration |
| CommentDiscontinue | CommentDeclaration |
| CommentEnter | CommentDeclaration |
| CommentModify | CommentDeclaration |
| DiseaseStageEnter | DiseaseStage |
| DiseaseStageModify | DiseaseStage |
| DiseaseStageRemove | DiseaseStage |
| ESAppointmentCancel | ESAppointment |
| ESAppointmentEnter | ESAppointment |
| ESAppointmentModify | ESAppointment |
| ESAppointmentReschedule | ESAppointment |
| ESAppointmentVisitLink | ESAppointment |
| ESAppointmentVisitLinkModify | ESAppointment |
| ESAppointmentVisitUnlink | ESAppointment |
| HealthIssueDelete | HealthIssue |
| HealthIssueDiscontinue | HealthIssue |
| HealthIssueEnter | HealthIssue |
| HealthIssueImport | HealthIssue |
| HealthIssueModify | HealthIssue |
| HealthIssueReject | HealthIssue |
| InsuranceEnter | Insurance |
| InsuranceModify | Insurance |
| ObservationEnter | Observation |
| AlertCheckingOrder | Order |
| OrderAlternateEnterNoIVAdditive | Order |
| OrderAlternateEnterWithIVAdditive | Order |
| OrderAlternateInitNoIVAdditive | Order |
| OrderAlternateInitWithIVAdditive | Order |
| OrderAlternateModify | Order |
| OrderCancel | Order |
| OrderComplete | Order |
| OrderDiscontinue | Order |
| OrderDispensePharmacyExisting | Order |
| OrderDispensePharmacyModify | Order |
| OrderDispensePharmacyNew | Order |
| OrderEnter | Order |
| OrderEnterNoIVAdditives | Order |
| OrderEnterPharmacyPerfect | Order |
| OrderEnterWithIVAdditives | Order |
| OrderInit | Order |
| OrderInitNoIVAdditives | Order |
| OrderInitPharmacy | Order |
| OrderInitWithIVAdditives | Order |
| OrderModify | Order |
| OrderModifyPharmacy | Order |
| OrderModifyPharmacyPerfect | Order |
| OrderRelease | Order |
| OrderSuspend | Order |
| OrderUnsuspend | Order |
| OrderUpdateAfterObservation | Order |
| OrderVerify | Order |
| OrderVerifyPharmacy | Order |
| OrderVerifyRx | Order |
| OutpatientOrderEnterNoIVAdditive | Order |
| OutpatientOrderInitNoIVAdditive | Order |
| OutpatientOrderModify | Order |
| OrderReconciliationPerform | OrderReconcile |
| OrderReconciliationSave | OrderReconcile |
| OrderSetEnter | OrderSet |
| OrderSetInit | OrderSet |
| OrderTaskEnter | OrderTask |
| OrderTaskModify | OrderTask |
| OrderTaskReschedule | OrderTask |
| OrderTaskOccurrenceEnter | OrderTaskOccurrence |
| OrderTaskOccurrenceIntendToAdmin | OrderTaskOccurrence |
| OrderTaskOccurrenceModify | OrderTaskOccurrence |
| OrderTaskOccurrenceReschedule | OrderTaskOccurrence |
| PatientFormEnter | PatientFormUser |
| PatientFormModify | PatientFormUser |
| PhysNoteEnter | PhysicalNote |
| PhysNoteModify | PhysicalNote |
| ReferralEnter | Referral |
| ReferralModify | Referral |
| SRGCaseEnter | SRGCase |
| SRGCaseItemAdd | SRGCase |
| SRGCaseItemDelete | SRGCase |
| SRGCaseItemsReinitialize | SRGCase |
| SRGCaseStatusChange | SRGCase |
| SRGCaseSupplementalInfoUpdate | SRGCase |
| SuperBillSave | SuperBillChargeHeader |
| SuperBillSubmit | SuperBillChargeHeader |
| ActivateApplication | UserInfo |
| UserTaskItemCreate_Client | UserTaskItem |
| UserTaskItemCreate_User | UserTaskItem |
| UserTaskItemModify_Client | UserTaskItem |
| UserTaskItemModify_User | UserTaskItem |
| UserTaskItemStatusChange_Client | UserTaskItem |
| UserTaskItemStatusChange_User | UserTaskItem |