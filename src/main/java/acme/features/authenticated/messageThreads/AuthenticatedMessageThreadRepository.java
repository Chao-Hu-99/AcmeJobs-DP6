
package acme.features.authenticated.messageThreads;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.messages.MessageThread;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AuthenticatedMessageThreadRepository extends AbstractRepository {

	@Query("select a from MessageThread a where a.id= ?1")
	MessageThread findOneMessageThreadById(int id);

	@Query("select a from MessageThread a join a.authenticateds au where au.id = ?1")
	Collection<MessageThread> findMany(int id);

}
