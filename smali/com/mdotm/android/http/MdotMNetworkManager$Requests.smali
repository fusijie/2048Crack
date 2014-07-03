.class Lcom/mdotm/android/http/MdotMNetworkManager$Requests;
.super Ljava/lang/Object;
.source "MdotMNetworkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdotm/android/http/MdotMNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Requests"
.end annotation


# instance fields
.field adID:Ljava/lang/String;

.field adRequest:Lcom/mdotm/android/model/MdotMAdRequest;

.field httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field requestID:J

.field requestUrl:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lcom/mdotm/android/http/MdotMNetworkManager;


# direct methods
.method public constructor <init>(Lcom/mdotm/android/http/MdotMNetworkManager;Ljava/lang/StringBuffer;Lcom/mdotm/android/model/MdotMAdRequest;J)V
    .locals 0
    .parameter
    .parameter "url"
    .parameter "params"
    .parameter "requestId"

    .prologue
    .line 773
    iput-object p1, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput-object p2, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->requestUrl:Ljava/lang/StringBuffer;

    .line 777
    iput-object p3, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->adRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    .line 778
    iput-wide p4, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->requestID:J

    .line 780
    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 795
    :try_start_0
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    #getter for: Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$0(Lcom/mdotm/android/http/MdotMNetworkManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mdotm/android/utils/MdotMUtils;->getAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->adID:Ljava/lang/String;

    .line 796
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->adID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ad id "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->adID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->requestUrl:Ljava/lang/StringBuffer;

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 800
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->requestUrl:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gaid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->adID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :cond_0
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->adID:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 810
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->requestUrl:Ljava/lang/StringBuffer;

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 811
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v1

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    #getter for: Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$0(Lcom/mdotm/android/http/MdotMNetworkManager;)Landroid/content/Context;

    move-result-object v3

    .line 811
    invoke-virtual {v1, v3}, Lcom/mdotm/android/utils/MdotMUtils;->getLAT(Landroid/content/Context;)Z

    move-result v14

    .line 813
    .local v14, isLAT:Z
    if-eqz v14, :cond_3

    .line 814
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->requestUrl:Ljava/lang/StringBuffer;

    const-string v3, "ate=0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 823
    .end local v14           #isLAT:Z
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "request url is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->requestUrl:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 825
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->requestUrl:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 826
    const/16 v18, 0x0

    .line 827
    .local v18, response:Lorg/apache/http/HttpResponse;
    new-instance v12, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v12}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 833
    .local v12, httpParameters:Lorg/apache/http/params/HttpParams;
    const/16 v22, 0x2710

    .line 834
    .local v22, timeoutConnection:I
    move/from16 v0, v22

    invoke-static {v12, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 839
    const/16 v23, 0x7530

    .line 840
    .local v23, timeoutSocket:I
    move/from16 v0, v23

    invoke-static {v12, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 841
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 844
    .local v11, httpClient:Lorg/apache/http/client/HttpClient;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v11, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 845
    const-string v1, "The request is being sent"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 846
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    .line 848
    .local v19, responseCode:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "The response code is:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    const/16 v1, 0xc8

    move/from16 v0, v19

    if-ne v0, v1, :cond_9

    .line 851
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 854
    .local v13, inputStream:Ljava/io/InputStream;
    const/16 v1, 0x400

    new-array v9, v1, [B

    .line 855
    .local v9, data:[B
    const/4 v15, 0x0

    .line 856
    .local v15, len:I
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 858
    .local v17, raw:Ljava/lang/StringBuffer;
    :goto_2
    const/4 v1, -0x1

    :try_start_3
    invoke-virtual {v13, v9}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v15

    if-ne v1, v15, :cond_4

    .line 864
    :goto_3
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    .line 868
    .local v20, responseData:Ljava/lang/String;
    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 869
    const-string v1, "<VAST"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 871
    new-instance v1, Lcom/mdotm/android/vast/VastXmlParser;

    invoke-direct {v1}, Lcom/mdotm/android/vast/VastXmlParser;-><init>()V

    .line 872
    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Lcom/mdotm/android/vast/VastXmlParser;->parseResponse(Ljava/lang/String;)Lcom/mdotm/android/vast/VastAd;

    move-result-object v2

    .line 874
    .local v2, vastAd:Lcom/mdotm/android/vast/VastAd;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mdotm/android/vast/VastAd;->getStatus()I

    move-result v1

    if-eqz v1, :cond_2

    .line 876
    new-instance v1, Lcom/mdotm/android/http/AdContentDownloader;

    invoke-direct {v1}, Lcom/mdotm/android/http/AdContentDownloader;-><init>()V

    .line 877
    const/4 v3, 0x0

    invoke-static {}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$1()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    #getter for: Lcom/mdotm/android/http/MdotMNetworkManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$0(Lcom/mdotm/android/http/MdotMNetworkManager;)Landroid/content/Context;

    move-result-object v5

    .line 878
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->adRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    invoke-virtual {v6}, Lcom/mdotm/android/model/MdotMAdRequest;->isEnableCaching()Z

    move-result v6

    .line 876
    invoke-virtual/range {v1 .. v6}, Lcom/mdotm/android/http/AdContentDownloader;->downloadResources(Lcom/mdotm/android/vast/VastAd;Lcom/mdotm/android/model/MdotMAdResponse;ILandroid/content/Context;Z)V

    .line 881
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    iget-object v1, v1, Lcom/mdotm/android/http/MdotMNetworkManager;->networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

    invoke-interface {v1, v2}, Lcom/mdotm/android/listener/MdotMNetworkListener;->finishedVastParsing(Lcom/mdotm/android/vast/VastAd;)V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 943
    .end local v2           #vastAd:Lcom/mdotm/android/vast/VastAd;
    .end local v9           #data:[B
    .end local v13           #inputStream:Ljava/io/InputStream;
    .end local v15           #len:I
    .end local v17           #raw:Ljava/lang/StringBuffer;
    .end local v19           #responseCode:I
    .end local v20           #responseData:Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "class = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    iget-object v3, v3, Lcom/mdotm/android/http/MdotMNetworkManager;->networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 944
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 945
    .local v16, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->requestID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 946
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    #getter for: Lcom/mdotm/android/http/MdotMNetworkManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$2(Lcom/mdotm/android/http/MdotMNetworkManager;)Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 947
    return-void

    .line 803
    .end local v11           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v12           #httpParameters:Lorg/apache/http/params/HttpParams;
    .end local v16           #msg:Landroid/os/Message;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v22           #timeoutConnection:I
    .end local v23           #timeoutSocket:I
    :catch_0
    move-exception v10

    .line 805
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 816
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v14       #isLAT:Z
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->requestUrl:Ljava/lang/StringBuffer;

    const-string v3, "ate=1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 819
    .end local v14           #isLAT:Z
    :catch_1
    move-exception v10

    .line 820
    .restart local v10       #e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 859
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v9       #data:[B
    .restart local v11       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v12       #httpParameters:Lorg/apache/http/params/HttpParams;
    .restart local v13       #inputStream:Ljava/io/InputStream;
    .restart local v15       #len:I
    .restart local v17       #raw:Ljava/lang/StringBuffer;
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    .restart local v19       #responseCode:I
    .restart local v22       #timeoutConnection:I
    .restart local v23       #timeoutSocket:I
    :cond_4
    :try_start_6
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v9, v3, v15}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    .line 861
    :catch_2
    move-exception v1

    goto/16 :goto_3

    .line 886
    .restart local v20       #responseData:Ljava/lang/String;
    :cond_5
    :try_start_7
    new-instance v7, Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-direct {v7}, Lcom/mdotm/android/model/MdotMAdResponse;-><init>()V

    .line 887
    .local v7, adResponse:Lcom/mdotm/android/model/MdotMAdResponse;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 889
    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->htmlResource:I

    invoke-virtual {v7, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setResourceType(I)V

    .line 890
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 892
    sget v1, Lcom/mdotm/android/utils/MdotMUtils;->AD_WITH_BANNER_OR_XHTML_OR_VIDEO:I

    invoke-virtual {v7, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setAdType(I)V

    .line 893
    if-eqz v7, :cond_6

    .line 894
    invoke-virtual {v7}, Lcom/mdotm/android/model/MdotMAdResponse;->getStatus()I

    move-result v1

    if-eqz v1, :cond_6

    .line 895
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->adRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdRequest;->isLoadInterstitial()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 896
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setRequestForBannerAd(Z)V

    .line 907
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->adRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdRequest;->getAdSize()Ljava/lang/String;

    move-result-object v8

    .line 908
    .local v8, adSize:Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 909
    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 910
    .local v21, sizes:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Ad width and height "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 911
    const/4 v3, 0x0

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 912
    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 910
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 914
    const/4 v1, 0x0

    aget-object v1, v21, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 913
    invoke-virtual {v7, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setWidth(I)V

    .line 916
    const/4 v1, 0x1

    aget-object v1, v21, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 915
    invoke-virtual {v7, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setHeight(I)V

    .line 923
    .end local v8           #adSize:Ljava/lang/String;
    .end local v21           #sizes:[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    iget-object v1, v1, Lcom/mdotm/android/http/MdotMNetworkManager;->networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

    invoke-interface {v1, v7}, Lcom/mdotm/android/listener/MdotMNetworkListener;->finishedAdParsing(Lcom/mdotm/android/model/MdotMAdResponse;)V
    :try_end_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_4

    .line 931
    .end local v7           #adResponse:Lcom/mdotm/android/model/MdotMAdResponse;
    .end local v9           #data:[B
    .end local v13           #inputStream:Ljava/io/InputStream;
    .end local v15           #len:I
    .end local v17           #raw:Ljava/lang/StringBuffer;
    .end local v19           #responseCode:I
    .end local v20           #responseData:Ljava/lang/String;
    :catch_3
    move-exception v10

    .line 932
    .local v10, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v10}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ClientProtocolException "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 936
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    iget-object v1, v1, Lcom/mdotm/android/http/MdotMNetworkManager;->networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/mdotm/android/listener/MdotMNetworkListener;->finishedAdParsing(Lcom/mdotm/android/model/MdotMAdResponse;)V

    goto/16 :goto_4

    .line 898
    .end local v10           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v7       #adResponse:Lcom/mdotm/android/model/MdotMAdResponse;
    .restart local v9       #data:[B
    .restart local v13       #inputStream:Ljava/io/InputStream;
    .restart local v15       #len:I
    .restart local v17       #raw:Ljava/lang/StringBuffer;
    .restart local v19       #responseCode:I
    .restart local v20       #responseData:Ljava/lang/String;
    :cond_7
    const/4 v1, 0x1

    :try_start_8
    invoke-virtual {v7, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setRequestForBannerAd(Z)V
    :try_end_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_5

    .line 937
    .end local v7           #adResponse:Lcom/mdotm/android/model/MdotMAdResponse;
    .end local v9           #data:[B
    .end local v13           #inputStream:Ljava/io/InputStream;
    .end local v15           #len:I
    .end local v17           #raw:Ljava/lang/StringBuffer;
    .end local v19           #responseCode:I
    .end local v20           #responseData:Ljava/lang/String;
    :catch_4
    move-exception v10

    .line 938
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IOException "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 941
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    iget-object v1, v1, Lcom/mdotm/android/http/MdotMNetworkManager;->networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/mdotm/android/listener/MdotMNetworkListener;->finishedAdParsing(Lcom/mdotm/android/model/MdotMAdResponse;)V

    goto/16 :goto_4

    .line 926
    .end local v10           #e:Ljava/io/IOException;
    .restart local v9       #data:[B
    .restart local v13       #inputStream:Ljava/io/InputStream;
    .restart local v15       #len:I
    .restart local v17       #raw:Ljava/lang/StringBuffer;
    .restart local v19       #responseCode:I
    .restart local v20       #responseData:Ljava/lang/String;
    :cond_8
    :try_start_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    iget-object v1, v1, Lcom/mdotm/android/http/MdotMNetworkManager;->networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/mdotm/android/listener/MdotMNetworkListener;->finishedAdParsing(Lcom/mdotm/android/model/MdotMAdResponse;)V

    goto/16 :goto_4

    .line 929
    .end local v9           #data:[B
    .end local v13           #inputStream:Ljava/io/InputStream;
    .end local v15           #len:I
    .end local v17           #raw:Ljava/lang/StringBuffer;
    .end local v20           #responseData:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    iget-object v1, v1, Lcom/mdotm/android/http/MdotMNetworkManager;->networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/mdotm/android/listener/MdotMNetworkListener;->finishedAdParsing(Lcom/mdotm/android/model/MdotMAdResponse;)V
    :try_end_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_4
.end method
