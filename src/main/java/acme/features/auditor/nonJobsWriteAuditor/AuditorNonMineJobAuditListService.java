
package acme.features.auditor.nonJobsWriteAuditor;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.jobs.Job;
import acme.entities.roles.Auditor;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.services.AbstractListService;

@Service
public class AuditorNonMineJobAuditListService implements AbstractListService<Auditor, Job> {

	@Autowired
	AuditorNonMineJobAuditRepository repository;


	@Override
	public boolean authorise(final Request<Job> request) {
		assert request != null;
		return true;
	}

	@Override
	public void unbind(final Request<Job> request, final Job entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "title", "salary", "deadline");
	}

	@Override
	public Collection<Job> findMany(final Request<Job> request) {
		assert request != null;
		Integer id = request.getPrincipal().getActiveRoleId();
		Collection<Job> res = this.repository.jobsAuditorHasNotWrittenAudit(id);

		return res;
	}

}
