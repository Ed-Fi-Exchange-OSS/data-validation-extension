CREATE FUNCTION tracked_deletes_datavalidation.RuleStatusDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_datavalidation.RuleStatusDescriptor(RuleStatusDescriptorId, Id, ChangeVersion)
    SELECT OLD.RuleStatusDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.RuleStatusDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON datavalidation.RuleStatusDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_datavalidation.RuleStatusDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_datavalidation.RunStatusDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_datavalidation.RunStatusDescriptor(RunStatusDescriptorId, Id, ChangeVersion)
    SELECT OLD.RunStatusDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.RunStatusDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON datavalidation.RunStatusDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_datavalidation.RunStatusDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_datavalidation.SeverityDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_datavalidation.SeverityDescriptor(SeverityDescriptorId, Id, ChangeVersion)
    SELECT OLD.SeverityDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.SeverityDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON datavalidation.SeverityDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_datavalidation.SeverityDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_datavalidation.ValidationLogicTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_datavalidation.ValidationLogicTypeDescriptor(ValidationLogicTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.ValidationLogicTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ValidationLogicTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON datavalidation.ValidationLogicTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_datavalidation.ValidationLogicTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_datavalidation.ValidationResult_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_datavalidation.ValidationResult(ResourceType, ResultIdentifier, Id, ChangeVersion)
    VALUES (OLD.ResourceType, OLD.ResultIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON datavalidation.ValidationResult 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_datavalidation.ValidationResult_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_datavalidation.ValidationRule_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_datavalidation.ValidationRule(RuleIdentifier, RuleSource, Id, ChangeVersion)
    VALUES (OLD.RuleIdentifier, OLD.RuleSource, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON datavalidation.ValidationRule 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_datavalidation.ValidationRule_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_datavalidation.ValidationRun_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_datavalidation.ValidationRun(Host, RuleEngine, RunIdentifier, Id, ChangeVersion)
    VALUES (OLD.Host, OLD.RuleEngine, OLD.RunIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON datavalidation.ValidationRun 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_datavalidation.ValidationRun_TR_DelTrkg();

