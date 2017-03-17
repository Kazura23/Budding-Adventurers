//FrankenCopyCoded by MDS
/*--- __ECO__ __PLAYMAKER__ __ACTION__ ---*/
// Keywords: knockback agent navmeshagent navmesh

using UnityEngine;

namespace HutongGames.PlayMaker.Actions
{
    [ActionCategory(ActionCategory.Character)]
    [Tooltip("Knocks a NavMeshAgent back in the direction of the hit object ")]
    public class agentKnockback : FsmStateAction
    {
        [RequiredField]  
         [CheckForComponent(typeof(NavMeshAgent))]
        [Tooltip("The NavMeshAgent game object to knock back")]
        public FsmOwnerDefault gameObject;
        [Tooltip("Amount of KnockBack. Values 0.1 to 1 work best.")]
        public FsmFloat knockback;
        [Tooltip("The object that hit the Agent")]
        public FsmGameObject hitObject;
		[ActionSection("For a smoother effect")]  
		 [Tooltip("Number of frames to knock the agent back for. repeatFrames must be set to true for this to work.")]
        public FsmInt repeatXFrames;
        public FsmBool repeatFrames;
		[ActionSection("For debugging")]
        [Tooltip("Optional: The direction of the knock back for Debugging or other purposes")]
         public FsmVector3 direction;
        private Vector3 myPosition;
        private Vector3 hitObjectPosition;
        private Vector3 directionPri;
        private Vector3 destination;
        private int loop;
        private float currentSpeed;
        private float currentAccel;
        private float currentAngularSpeed;
        private Vector3 moveVector;		
        NavMeshAgent nm;

        public override void Reset()
        {
            gameObject = null;
            knockback = null;
            repeatFrames = true;
			knockback = 0.2f;
            repeatXFrames = 5;
			repeatFrames = true;
        }

        public override void OnEnter()
        {
            var go = Fsm.GetOwnerDefaultTarget(gameObject);        
            loop = 0;
            myPosition = go.transform.position;
            hitObjectPosition = hitObject.Value.gameObject.transform.position;
            directionPri = myPosition - hitObjectPosition;
            direction.Value = directionPri;
            destination = directionPri * knockback.Value;
            nm = go.GetComponent<NavMeshAgent>();
     
            if (!repeatFrames.Value)
            {
                DoKnockBack();
                Finish();
            }

        }

        public override void OnUpdate()
        {
            if (repeatFrames.Value)
            {
                hitObjectPosition = hitObject.Value.gameObject.transform.position;
                DoKnockBack();
            }
        }

        void DoKnockBack()
        {
            var go = Fsm.GetOwnerDefaultTarget(gameObject);
            if (go == null)
            {
                return;
            }
          
            nm = go.GetComponent<NavMeshAgent>();
            myPosition = go.gameObject.transform.position;
            directionPri = myPosition - hitObjectPosition;
            direction.Value = directionPri;
            destination = directionPri * knockback.Value;           
            moveVector = new Vector3(destination.x, 0f, destination.z);
			nm.Move(moveVector);
    
            loop++;
         
			if (loop == repeatXFrames.Value)
            {
           nm.velocity = Vector3.zero;
           nm.Stop();
           nm.Resume();
             Finish();   
            }
        }

    }
}
