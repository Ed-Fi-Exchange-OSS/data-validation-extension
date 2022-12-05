CREATE FUNCTION tracked_deletes_edfixvalidations.RuleStatusDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_edfixvalidations.RuleStatusDescriptor(RuleStatusDescriptorId, Id, ChangeVersion)
    SELECT OLD.RuleStatusDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.RuleStatusDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfixvalidations.RuleStatusDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfixvalidations.RuleStatusDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfixvalidations.RunStatusDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_edfixvalidations.RunStatusDescriptor(RunStatusDescriptorId, Id, ChangeVersion)
    SELECT OLD.RunStatusDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.RunStatusDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfixvalidations.RunStatusDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfixvalidations.RunStatusDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfixvalidations.SeverityDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_edfixvalidations.SeverityDescriptor(SeverityDescriptorId, Id, ChangeVersion)
    SELECT OLD.SeverityDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.SeverityDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfixvalidations.SeverityDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfixvalidations.SeverityDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfixvalidations.ValidationLogicTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_edfixvalidations.ValidationLogicTypeDescriptor(ValidationLogicTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.ValidationLogicTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ValidationLogicTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfixvalidations.ValidationLogicTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfixvalidations.ValidationLogicTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfixvalidations.ValidationResult_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_edfixvalidations.ValidationResult(ResourceType, ResultIdentifier, Id, ChangeVersion)
    VALUES (OLD.ResourceType, OLD.ResultIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfixvalidations.ValidationResult 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfixvalidations.ValidationResult_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfixvalidations.ValidationRule_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_edfixvalidations.ValidationRule(RuleIdentifier, RuleSource, Id, ChangeVersion)
    VALUES (OLD.RuleIdentifier, OLD.RuleSource, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfixvalidations.ValidationRule 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfixvalidations.ValidationRule_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_edfixvalidations.ValidationRun_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_edfixvalidations.ValidationRun(Host, RuleEngine, RunIdentifier, Id, ChangeVersion)
    VALUES (OLD.Host, OLD.RuleEngine, OLD.RunIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON edfixvalidations.ValidationRun 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_edfixvalidations.ValidationRun_TR_DelTrkg();

