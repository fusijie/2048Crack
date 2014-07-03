.class Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;


# instance fields
.field final synthetic this$1:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$4;->this$1:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$4;->this$1:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;
    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->access$1(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$4;->this$1:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;
    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->access$1(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
