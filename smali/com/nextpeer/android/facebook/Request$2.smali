.class Lcom/nextpeer/android/facebook/Request$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/Request$Callback;


# instance fields
.field private final synthetic val$callback:Lcom/nextpeer/android/facebook/Request$GraphUserListCallback;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/Request$GraphUserListCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Request$2;->val$callback:Lcom/nextpeer/android/facebook/Request$GraphUserListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/nextpeer/android/facebook/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request$2;->val$callback:Lcom/nextpeer/android/facebook/Request$GraphUserListCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request$2;->val$callback:Lcom/nextpeer/android/facebook/Request$GraphUserListCallback;

    const-class v1, Lcom/nextpeer/android/facebook/model/GraphUser;

    #calls: Lcom/nextpeer/android/facebook/Request;->typedListFromResponse(Lcom/nextpeer/android/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    invoke-static {p1, v1}, Lcom/nextpeer/android/facebook/Request;->access$2(Lcom/nextpeer/android/facebook/Response;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/nextpeer/android/facebook/Request$GraphUserListCallback;->onCompleted(Ljava/util/List;Lcom/nextpeer/android/facebook/Response;)V

    :cond_0
    return-void
.end method
