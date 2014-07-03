.class Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;


# instance fields
.field final synthetic this$1:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest$3;->this$1:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/app/Activity;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot create an AuthorizationRequest without a valid Activity or Fragment"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot create an AuthorizationRequest without a valid Activity or Fragment"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
