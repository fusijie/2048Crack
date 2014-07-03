.class Lcom/nextpeer/android/facebook/Request$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/Request$Callback;


# instance fields
.field private final synthetic val$callback:Lcom/nextpeer/android/facebook/Request$GraphUserCallback;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/Request$GraphUserCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Request$1;->val$callback:Lcom/nextpeer/android/facebook/Request$GraphUserCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/nextpeer/android/facebook/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request$1;->val$callback:Lcom/nextpeer/android/facebook/Request$GraphUserCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Request$1;->val$callback:Lcom/nextpeer/android/facebook/Request$GraphUserCallback;

    const-class v0, Lcom/nextpeer/android/facebook/model/GraphUser;

    invoke-virtual {p1, v0}, Lcom/nextpeer/android/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/model/GraphUser;

    invoke-interface {v1, v0, p1}, Lcom/nextpeer/android/facebook/Request$GraphUserCallback;->onCompleted(Lcom/nextpeer/android/facebook/model/GraphUser;Lcom/nextpeer/android/facebook/Response;)V

    :cond_0
    return-void
.end method
