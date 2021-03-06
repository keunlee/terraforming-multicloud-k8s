echo "VARIABLES"
echo "---------"
echo "MEMBERSHIP_NAME: ${MEMBERSHIP_NAME}"
echo "PROJECT_ID: ${PROJECT_ID}"
echo "KUBECONFIG_CONTEXT: ${KUBECONFIG_CONTEXT}"
echo "KUBECONFIG_PATH: ${KUBECONFIG_PATH}"
echo "---------"
echo ""
echo "continue (type '1' or '2')?"

select yn in "Yes" "No"
case $yn in

    Yes ) 

gcloud container hub memberships unregister $MEMBERSHIP_NAME \
   --project=$PROJECT_ID \
   --context=$KUBECONFIG_CONTEXT \
   --kubeconfig=$KUBECONFIG_PATH
break;;

    No ) 
    
break;;
esac