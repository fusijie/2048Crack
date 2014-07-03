.class Lcom/mdotm/android/http/MdotMRequestQueueClient$1;
.super Landroid/os/Handler;
.source "MdotMRequestQueueClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/http/MdotMRequestQueueClient;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;


# direct methods
.method constructor <init>(Lcom/mdotm/android/http/MdotMRequestQueueClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    .line 39
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 44
    :try_start_0
    const-string v4, "Handling the message"

    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " message id "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->listActiveRequest:Ljava/util/List;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$0(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    const-string v4, "contains requested id "

    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->listActiveRequest:Ljava/util/List;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$0(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapRequestQueue:Ljava/util/Map;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$1(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapNetworkListenerQueue:Ljava/util/Map;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$2(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->listRequestId:Ljava/util/List;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->listRequestId:Ljava/util/List;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 55
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-virtual {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->isApplicationHasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->listRequestId:Ljava/util/List;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 58
    .local v3, reqId:Ljava/lang/Long;
    const-string v4, "mapRequestQueue size > 0"

    .line 57
    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v6, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    .line 60
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapRequestQueue:Ljava/util/Map;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$1(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mdotm/android/model/MdotMAdRequest;

    .line 61
    iget-object v5, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapNetworkListenerQueue:Ljava/util/Map;
    invoke-static {v5}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$2(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v5

    .line 62
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mdotm/android/listener/MdotMNetworkListener;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 59
    invoke-virtual {v6, v4, v5, v7, v8}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->sendNextRequest(Lcom/mdotm/android/model/MdotMAdRequest;Lcom/mdotm/android/listener/MdotMNetworkListener;J)V

    .line 100
    .end local v3           #reqId:Ljava/lang/Long;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 111
    :goto_1
    return-void

    .line 64
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->listRequestId:Ljava/util/List;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v4

    .line 65
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 64
    if-lt v1, v4, :cond_2

    .line 78
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->listRequestId:Ljava/util/List;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 81
    const-string v4, "still has some interstitial requests so processing"

    .line 80
    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->listRequestId:Ljava/util/List;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 83
    .restart local v3       #reqId:Ljava/lang/Long;
    iget-object v6, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    .line 84
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapRequestQueue:Ljava/util/Map;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$1(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mdotm/android/model/MdotMAdRequest;

    .line 85
    iget-object v5, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapNetworkListenerQueue:Ljava/util/Map;
    invoke-static {v5}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$2(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v5

    .line 86
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mdotm/android/listener/MdotMNetworkListener;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 83
    invoke-virtual {v6, v4, v5, v7, v8}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->sendNextRequest(Lcom/mdotm/android/model/MdotMAdRequest;Lcom/mdotm/android/listener/MdotMNetworkListener;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v1           #i:I
    .end local v3           #reqId:Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->listActiveRequest:Ljava/util/List;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$0(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 104
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapRequestQueue:Ljava/util/Map;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$1(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 105
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapNetworkListenerQueue:Ljava/util/Map;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$2(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 106
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->listRequestId:Ljava/util/List;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 107
    :catch_1
    move-exception v4

    goto :goto_1

    .line 66
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->listRequestId:Ljava/util/List;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 67
    .restart local v3       #reqId:Ljava/lang/Long;
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapRequestQueue:Ljava/util/Map;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$1(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v4

    .line 68
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mdotm/android/model/MdotMAdRequest;

    .line 69
    .local v2, req:Lcom/mdotm/android/model/MdotMAdRequest;
    invoke-virtual {v2}, Lcom/mdotm/android/model/MdotMAdRequest;->isLoadInterstitial()Z

    move-result v4

    if-nez v4, :cond_3

    .line 70
    const-string v4, "removing banner"

    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapRequestQueue:Ljava/util/Map;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$1(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapNetworkListenerQueue:Ljava/util/Map;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$2(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v4

    .line 73
    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->listRequestId:Ljava/util/List;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 65
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 89
    .end local v1           #i:I
    .end local v2           #req:Lcom/mdotm/android/model/MdotMAdRequest;
    .end local v3           #reqId:Ljava/lang/Long;
    :cond_4
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->listActiveRequest:Ljava/util/List;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$0(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 90
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->listActiveRequest:Ljava/util/List;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$0(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 91
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapRequestQueue:Ljava/util/Map;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$1(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 92
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapNetworkListenerQueue:Ljava/util/Map;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$2(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 93
    iget-object v4, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    #getter for: Lcom/mdotm/android/http/MdotMRequestQueueClient;->listRequestId:Ljava/util/List;
    invoke-static {v4}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
