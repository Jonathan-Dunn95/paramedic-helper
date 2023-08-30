BEGIN TRANSACTION;

DROP TABLE IF EXISTS protocol_pdf, treatment_protocol, treatment_protocol_category;
DROP SEQUENCE IF EXISTS seq_pdf_id, seq_protocol_id, seq_category_id;

CREATE SEQUENCE seq_category_id
INCREMENT BY 1
START WITH 1001
NO MAXVALUE;

CREATE TABLE treatment_protocol_category (
  category_id INT NOT NULL DEFAULT nextval('seq_category_id'),
  category_name VARCHAR(125) NOT NULL,
  CONSTRAINT PK_treatment_protocol_category PRIMARY KEY (category_id),
  CONSTRAINT UQ_category_name UNIQUE (category_name)
);

CREATE SEQUENCE seq_protocol_id
INCREMENT BY 1
START WITH 2001
NO MAXVALUE;

CREATE TABLE treatment_protocol (
  protocol_id INT NOT NULL DEFAULT nextval('seq_protocol_id'),
  protocol_name VARCHAR(125) NOT NULL,
  category_id INT,
  CONSTRAINT PK_protocol_id PRIMARY KEY (protocol_id),
  CONSTRAINT FK_category_id FOREIGN KEY (category_id) REFERENCES treatment_protocol_category (category_id),
  CONSTRAINT UQ_protocol_name UNIQUE (protocol_name)
);

CREATE SEQUENCE seq_pdf_id
INCREMENT BY 1
START WITH 3001
NO MAXVALUE;

CREATE TABLE protocol_pdf (
  pdf_id INT NOT NULL DEFAULT nextval('seq_pdf_id'),
  protocol_id INT,
  file_path VARCHAR(255) NOT NULL,
  CONSTRAINT PK_pdf_id PRIMARY KEY (pdf_id),
  CONSTRAINT FK_protocol_id FOREIGN KEY (protocol_id) REFERENCES treatment_protocol (protocol_id), 
  CONSTRAINT UQ_file_path UNIQUE (file_path)
);

-- Insert treatment protocol categories
INSERT INTO treatment_protocol_category (category_name) VALUES ('Universal');
INSERT INTO treatment_protocol_category (category_name) VALUES ('Airway Respiratory');
INSERT INTO treatment_protocol_category (category_name) VALUES ('Adult Cardiac');
INSERT INTO treatment_protocol_category (category_name) VALUES ('Adult Medical');
INSERT INTO treatment_protocol_category (category_name) VALUES ('Adult Obstetrical');
INSERT INTO treatment_protocol_category (category_name) VALUES ('Pediatric Cardiac');
INSERT INTO treatment_protocol_category (category_name) VALUES ('Pediatric Medical');
INSERT INTO treatment_protocol_category (category_name) VALUES ('Trauma and Burn');
INSERT INTO treatment_protocol_category (category_name) VALUES ('Toxic and Environmental');
INSERT INTO treatment_protocol_category (category_name) VALUES ('EMS Triage and Destination');
INSERT INTO treatment_protocol_category (category_name) VALUES ('Special Operations');
INSERT INTO treatment_protocol_category (category_name) VALUES ('Special Circumstances');


-- Insert treatment protocols --

-- UNIVERSAL PROTOCOLS

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Universal Patient Care', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Triage', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('ABD Pain Vomiting and Diarrhea', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Altered Mental Status', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Back Pain', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('IV or IO Access', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Dental Problems', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Emergencies Involving Indwelling Central Lines', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Epistaxis', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Fever', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Pain Control', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Police Custody', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Seizure', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Suspected Stroke', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Suspected Sepsis', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Syncope', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Behavioral Health Crisis', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Behavioral Agitation Sedation Guide', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Hyperactive Delirium with Severe Agitation', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Universal'));


-- AIRWAY RESPIRATORY


INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Adult Airway', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Airway Respiratory'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Adult Failed Airway', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Airway Respiratory'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Airway Drug Assisted Intubation', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Airway Respiratory'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('COPD Asthma', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Airway Respiratory'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Pediatric Airway', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Airway Respiratory'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Pediatric Failed Airway', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Airway Respiratory'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Pediatric Respiratory Distress', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Airway Respiratory'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Post Intubation BIAD Management', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Airway Respiratory'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Ventilator Emergencies', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Airway Respiratory'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Tracheostomy Tube Emergenices', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Airway Respiratory'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Mechanical Ventilation Adult', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Airway Respiratory'));


-- ADULT CARDIAC --


INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Asystole Pulseless Electrical Activity', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Bradycardia Pulse Present', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Cardiac Arrest', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Chest Pain and STEMI', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('CHF Pulmonary Edema', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Adult Tachycardia Narrow', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Adult Tachycardia Monomorphic Wide', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Adult Tachycardia Polymorphic Wide', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('VF Pulseless VT', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Post Resuscitation', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('TEAM Focused CPR', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Termination of CPR', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Targeted Temperature Management', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('LVAD Emergency', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Total Mechanical Circulation', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Wearable Cardioverter Defibrillator Vest', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Cardiac'));


-- ADULT MEDICAL


INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Allergic Reaction', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Medical'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Diabetic Adult', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Medical'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Dialysis Renal Failure', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Medical'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Hypertension', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Medical'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Hypotension Shock', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Medical'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Suspected Stroke Activase t-PA Transfer', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Medical'));


-- ADULT OBSTETRICAL -- 


INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Childbirth Labor', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Obstetrical'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Newly Born', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Obstetrical'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Obstetrical Emergency', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Adult Obstetrical'));


--PEDIATRIC CARDIAC --


INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Pediatric Asystole PEA', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Pediatric Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Pediatric Bradycardia Poor Perfusion', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Pediatric Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Pediatric CHF Pulmonary Edema', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Pediatric Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Pediatric Pulseless Arrest', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Pediatric Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Pediatric Tachycardia Narrow Complex', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Pediatric Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Pediatric Tachycardia Wide Complex', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Pediatric Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Pediatric VF Pulseless VT', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Pediatric Cardiac'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Pediatric Post Resuscitation', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Pediatric Cardiac'));


-- PEDIATRIC MEDICAL


INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Pediatric Allergic Reaction', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Pediatric Medical'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Pediatric Diabetic', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Pediatric Medical'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Pediatric Hypotension Shock', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Pediatric Medical'));


-- TRAUMA AND BURN


INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Blast Injury', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Trauma and Burn'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Chemical and Electrical Burn', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Trauma and Burn'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Crush Syndrome', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Trauma and Burn'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Extremity Trauma', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Trauma and Burn'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Head Trauma', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Trauma and Burn'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Multiple Trauma', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Trauma and Burn'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Radiation Incident', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Trauma and Burn'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Selective Spinal Immobilization', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Trauma and Burn'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Thermal Burn', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Trauma and Burn'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Traumatic Arrest', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Trauma and Burn'));


-- TOXIC AND ENVIRONMENTAL


INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Bites and Envenomations', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Toxic and Environmental'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Carbon Monoxide Cyanide', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Toxic and Environmental'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Drowning Submersion Injury', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Toxic and Environmental'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Hyperthermia', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Toxic and Environmental'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Hypothermia', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Toxic and Environmental'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Marine Envenomations', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Toxic and Environmental'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Overdose Toxic Ingestion', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Toxic and Environmental'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('WMD Nerve Agent', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'Toxic and Environmental'));


-- EMS TRIAGE AND DESTINATION


INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Novant WFBMC EMS ED Triage KMC FCEMS', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'EMS Triage and Destination'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('LifeBrite of Stokes ED Triage', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'EMS Triage and Destination'));

INSERT INTO treatment_protocol (protocol_name, category_id)
VALUES ('Stroke EMS and Triage Destination', (SELECT category_id FROM treatment_protocol_category WHERE category_name = 'EMS Triage and Destination'));


-- Insert Protocol PDFs
											  
-- UNIVERSAL

INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Universal Patient Care'),
  '/Protocol PDFs/Universal 2022/Universal Patient Care.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Triage'),
  '/Protocol PDFs/Universal 2022/Triage.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Syncope'),
  '/Protocol PDFs/Universal 2022/Syncope.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Suspected Stroke'),
  '/Protocol PDFs/Universal 2022/Suspected Stroke.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
  VALUES (
    (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Suspected Sepsis'),
    '/Protocol PDFs/Universal 2022/Suspected Sepsis.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Seizure'),
  '/Protocol PDFs/Universal 2022/Seizure.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Police Custody'),
  '/Protocol PDFs/Universal 2022/Police Custody.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Pain Control'),
  '/Protocol PDFs/Universal 2022/Pain Control.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'IV or IO Access'),
  '/Protocol PDFs/Universal 2022/IV or IO Access.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Hyperactive Delirium with Severe Agitation'),
  '/Protocol PDFs/Universal 2022/Hyperactive Delirium with Severe Agitation.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Fever'),
  '/Protocol PDFs/Universal 2022/Fever.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Epistaxis'),
  '/Protocol PDFs/Universal 2022/Epistaxis.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Emergencies Involving Indwelling Central Lines'),
  '/Protocol PDFs/Universal 2022/Emergencies Involving Indwelling Central Lines.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Dental Problems'),
  '/Protocol PDFs/Universal 2022/Dental Problems.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Behavioral Health Crisis'),
  '/Protocol PDFs/Universal 2022/Behavioral Health Crisis.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Behavioral Agitation Sedation Guide'),
  '/Protocol PDFs/Universal 2022/Behavioral Agitation Sedation Guide.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Back Pain'),
  '/Protocol PDFs/Universal 2022/Back Pain.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Altered Mental Status'),
  '/Protocol PDFs/Universal 2022/Altered Mental Status.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'ABD Pain Vomiting and Diarrhea'),
  '/Protocol PDFs/Universal 2022/ABD Pain Vomiting and Diarrhea.pdf'
);

-- ADULT CARDIAC
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Adult Tachycardia Monomorphic Wide'),
  '/Protocol PDFs/Adult Cardiac 2022/Adult Tachycardia Monomorphic Wide.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Adult Tachycardia Narrow'),
  '/Protocol PDFs/Adult Cardiac 2022/Adult Tachycardia Narrow.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Adult Tachycardia Polymorphic Wide'),
  '/Protocol PDFs/Adult Cardiac 2022/Adult Tachycardia Polymorphic Wide.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Asystole Pulseless Electrical Activity'),
  '/Protocol PDFs/Adult Cardiac 2022/Asystole Pulseless Electrical Activity.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Bradycardia Pulse Present'),
  '/Protocol PDFs/Adult Cardiac 2022/Bradycardia Pulse Present.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Cardiac Arrest'),
  '/Protocol PDFs/Adult Cardiac 2022/Cardiac Arrest.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Chest Pain and STEMI'),
  '/Protocol PDFs/Adult Cardiac 2022/Chest Pain and STEMI.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'CHF Pulmonary Edema'),
  '/Protocol PDFs/Adult Cardiac 2022/CHF Pulmonary Edema.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'LVAD Emergency'),
  '/Protocol PDFs/Adult Cardiac 2022/LVAD Emergency.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Post Resuscitation'),
  '/Protocol PDFs/Adult Cardiac 2022/Post Resuscitation.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Targeted Temperature Management'),
  '/Protocol PDFs/Adult Cardiac 2022/Targeted Temperature Management.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'TEAM Focused CPR'),
  '/Protocol PDFs/Adult Cardiac 2022/TEAM Focused CPR.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Termination of CPR'),
  '/Protocol PDFs/Adult Cardiac 2022/Termination of CPR.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Total Mechanical Circulation'),
  '/Protocol PDFs/Adult Cardiac 2022/Total Mechanical Circulation.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'VF Pulseless VT'),
  '/Protocol PDFs/Adult Cardiac 2022/VF Pulseless VT.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Wearable Cardioverter Defibrillator Vest'),
  '/Protocol PDFs/Adult Cardiac 2022/Wearable Cardioverter Defibrillator Vest.pdf'
);

-- ADULT MEDICAL
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Allergic Reaction'),
  '/Protocol PDFs/Adult Medical 2022/Allergic Reaction.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Diabetic Adult'),
  '/Protocol PDFs/Adult Medical 2022/Diabetic Adult.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Dialysis Renal Failure'),
  '/Protocol PDFs/Adult Medical 2022/Dialysis Renal Failure.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Hypertension'),
  '/Protocol PDFs/Adult Medical 2022/Hypertension.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Hypotension Shock'),
  '/Protocol PDFs/Adult Medical 2022/Hypotension.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Suspected Stroke Activase t-PA Transfer'),
  '/Protocol PDFs/Adult Medical 2022/Suspected Stroke Activase t-PA Transfer.pdf'
);

-- ADULT OBSTETRICAL
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Childbirth Labor'),
  '/Protocol PDFs/Adult Obstetrical 2022/Childbirth Labor.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Newly Born'),
  '/Protocol PDFs/Adult Obstetrical 2022/Newly Born.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Obstetrical Emergency'),
  '/Protocol PDFs/Adult Obstetrical 2022/Obstetrical Emergency.pdf'
);


-- AIRWAY RESPIRATORY
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Adult Airway'),
  '/Protocol PDFs/Airway Respiratory 2022/Adult Airway.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Adult Failed Airway'),
  '/Protocol PDFs/Airway Respiratory 2022/Adult Failed Airway.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Airway Drug Assisted Intubation'),
  '/Protocol PDFs/Airway Respiratory 2022/Airway Drug Assisted Intubation.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'COPD Asthma'),
  '/Protocol PDFs/Airway Respiratory 2022/COPD Asthma.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Mechanical Ventilation Adult'),
  '/Protocol PDFs/Airway Respiratory 2022/Mechanical Ventilation Adult.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Pediatric Airway'),
  '/Protocol PDFs/Airway Respiratory 2022/Pediatric Airway.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Pediatric Failed Airway'),
  '/Protocol PDFs/Airway Respiratory 2022/Pediatric Failed Airway.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Pediatric Respiratory Distress'),
  '/Protocol PDFs/Airway Respiratory 2022/Pediatric Respiratory Distress.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Post Intubation BIAD Management'),
  '/Protocol PDFs/Airway Respiratory 2022/Post Intubation BIAD Management.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Tracheostomy Tube Emergencies'),
  '/Protocol PDFs/Airway Respiratory 2022/Tracheostomy Tube Emergencies.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Ventilator Emergencies'),
  '/Protocol PDFs/Airway Respiratory 2022/Ventilator Emergencies.pdf'
);

-- PEDIATRIC CARDIAC
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Pediatric Asystole PEA'),
  '/Protocol PDFs/Pediatric Cardiac 2022/Pediatric Asystole PEA.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Pediatric Bradycardia Poor Perfusion'),
  '/Protocol PDFs/Pediatric Cardiac 2022/Pediatric Bradycardia Poor Perfusion.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Pediatric CHF Pulmonary Edema'),
  '/Protocol PDFs/Pediatric Cardiac 2022/Pediatric CHF Pulmonary Edema.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Pediatric Post Resuscitation'),
  '/Protocol PDFs/Pediatric Cardiac 2022/Pediatric Post Resuscitation.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Pediatric Pulseless Arrest'),
  '/Protocol PDFs/Pediatric Cardiac 2022/Pediatric Pulseless Arrest.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Pediatric Tachycardia Narrow Complex'),
  '/Protocol PDFs/Pediatric Cardiac 2022/Pediatric Tachycardia Narrow Complex.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Pediatric Tachycardia Wide Complex'),
  '/Protocol PDFs/Pediatric Cardiac 2022/Pediatric Tachycardia Wide Complex.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Pediatric VF Pulseless VT'),
  '/Protocol PDFs/Pediatric Cardiac 2022/Pediatric VF Pulseless VT.pdf'
);

-- PEDIATRIC MEDICAL
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Pediatric Allergic Reaction'),
  '/Protocol PDFs/Pediatric Medical 2022/Pediatric Allergic Reaction.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Pediatric Diabetic'),
  '/Protocol PDFs/Pediatric Medical 2022/Pediatric Diabetic.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Pediatric Hypotension Shock'),
  '/Protocol PDFs/Pediatric Medical 2022/Pediatric Hypotension Shock.pdf'
);

-- TRAUMA AND BURN
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Blast Injury'),
  '/Protocol PDFs/Trauma and Burn 2022/Blast Injury.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Chemical and Electrical Burn'),
  '/Protocol PDFs/Trauma and Burn 2022/Chemical and Electrical Burn.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Crush Syndrome'),
  '/Protocol PDFs/Trauma and Burn 2022/Crush Syndrome.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Extremity Trauma'),
  '/Protocol PDFs/Trauma and Burn 2022/Extremity Trauma.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Head Trauma'),
  '/Protocol PDFs/Trauma and Burn 2022/Head Trauma.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Multiple Trauma'),
  '/Protocol PDFs/Trauma and Burn 2022/Multiple Trauma.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Radiation Incident'),
  '/Protocol PDFs/Trauma and Burn 2022/Radiation Incident.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Selective Spinal Immobilization'),
  '/Protocol PDFs/Trauma and Burn 2022/Selective Spinal Immobilization.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Thermal Burn'),
  '/Protocol PDFs/Trauma and Burn 2022/Thermal Burn.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Traumatic Arrest'),
  '/Protocol PDFs/Trauma and Burn 2022/Traumatic Arrest.pdf'
);

-- TOXIC AND ENVIRONMENTAL
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Bites and Envenomations'),
  '/Protocol PDFs/Toxic and Environmental 2022/Bites and Envenomations.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Carbon Monoxide Cyanide'),
  '/Protocol PDFs/Toxic and Environmental 2022/Carbon Monoxide Cyanide.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Drowning Submersion Injury'),
  '/Protocol PDFs/Toxic and Environmental 2022/Drowning Submersion Injury.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Hyperthermia'),
  '/Protocol PDFs/Toxic and Environmental 2022/Hyperthermia.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Hypothermia'),
  '/Protocol PDFs/Toxic and Environmental 2022/Hypothermia.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Marine Envenomations'),
  '/Protocol PDFs/Toxic and Environmental 2022/Marine Envenomations.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Overdose Toxic Ingestion'),
  '/Protocol PDFs/Toxic and Environmental 2022/Overdose Toxic Ingestion.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'WMD Nerve Agent'),
  '/Protocol PDFs/Toxic and Environmental 2022/WMD Nerve Agent.pdf'
);

-- SPECIAL CIRCUMSTANCES
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Hospice or Palliative Care Patient'),
  '/Protocol PDFs/Special Circumstances 2022/Hospice or Palliative Care Patient.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Respiratory Disease'),
  '/Protocol PDFs/Special Circumstances 2022/Respiratory Disease.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'SARS CoV2 Monoclonal Antibody Infusion'),
  '/Protocol PDFs/Special Circumstances 2022/SARS CoV2 Monoclonal Antibody Infusion.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Suspected Ebola'),
  '/Protocol PDFs/Special Circumstances 2022/Suspected Ebola.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Vaccination Medication'),
  '/Protocol PDFs/Special Circumstances 2022/Vaccination Medication.pdf'
);

-- SPECIAL OPERATIONS
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Scene Rehabilitation General'),
  '/Protocol PDFs/Special Operations 2022/Scene Rehabilitation General.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Scene Rehabilitation Responder'),
  '/Protocol PDFs/Special Operations 2022/Scene Rehabilitation Responder.pdf'
);

-- EMS TRIAGE AND DESTINATION
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'LifeBrite of Stokes ED Triage'),
  '/Protocol PDFs/EMS Triage and Destination 2022/LifeBrite of Stokes ED Triage.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Novant WFBMC EMS ED Triage CMC DMC'),
  '/Protocol PDFs/EMS Triage and Destination 2022/Novant WFBMC EMS ED Triage CMC DMC.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Novant WFBMC EMS ED Triage KMC FCEMS'),
  '/Protocol PDFs/EMS Triage and Destination 2022/Novant WFBMC EMS ED Triage KMC FCEMS.pdf'
);
INSERT INTO protocol_pdf (protocol_id, file_path)
VALUES (
  (SELECT protocol_id FROM treatment_protocol WHERE protocol_name = 'Stroke EMS and Triage Destination'),
  '/Protocol PDFs/EMS Triage and Destination 2022/Stroke EMS and Triage Destination.pdf'
);

COMMIT;