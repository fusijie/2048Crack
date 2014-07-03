.class Lcom/nextpeer/android/facebook/Session$SerializationProxyV1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxyV1"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6a59fe98cd935affL


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final lastAttemptedTokenExtendDate:Ljava/util/Date;

.field private final pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

.field private final shouldAutoPublish:Z

.field private final state:Lcom/nextpeer/android/facebook/SessionState;

.field private final tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/AccessToken;Ljava/util/Date;ZLcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$SerializationProxyV1;->applicationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/Session$SerializationProxyV1;->state:Lcom/nextpeer/android/facebook/SessionState;

    iput-object p3, p0, Lcom/nextpeer/android/facebook/Session$SerializationProxyV1;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    iput-object p4, p0, Lcom/nextpeer/android/facebook/Session$SerializationProxyV1;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    iput-boolean p5, p0, Lcom/nextpeer/android/facebook/Session$SerializationProxyV1;->shouldAutoPublish:Z

    iput-object p6, p0, Lcom/nextpeer/android/facebook/Session$SerializationProxyV1;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 8

    new-instance v0, Lcom/nextpeer/android/facebook/Session;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session$SerializationProxyV1;->applicationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session$SerializationProxyV1;->state:Lcom/nextpeer/android/facebook/SessionState;

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session$SerializationProxyV1;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    iget-object v4, p0, Lcom/nextpeer/android/facebook/Session$SerializationProxyV1;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    iget-boolean v5, p0, Lcom/nextpeer/android/facebook/Session$SerializationProxyV1;->shouldAutoPublish:Z

    iget-object v6, p0, Lcom/nextpeer/android/facebook/Session$SerializationProxyV1;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/nextpeer/android/facebook/Session;-><init>(Ljava/lang/String;Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/AccessToken;Ljava/util/Date;ZLcom/nextpeer/android/facebook/Session$AuthorizationRequest;Lcom/nextpeer/android/facebook/Session;)V

    return-object v0
.end method
