.class public final enum Lcom/nextpeer/android/facebook/SessionDefaultAudience;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/facebook/SessionDefaultAudience;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nextpeer/android/facebook/SessionDefaultAudience;

.field public static final enum EVERYONE:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

.field public static final enum FRIENDS:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

.field public static final enum NONE:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

.field public static final enum ONLY_ME:Lcom/nextpeer/android/facebook/SessionDefaultAudience;


# instance fields
.field private final nativeProtocolAudience:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/nextpeer/android/facebook/SessionDefaultAudience;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->NONE:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    new-instance v0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    const-string v1, "ONLY_ME"

    const-string v2, "SELF"

    invoke-direct {v0, v1, v4, v2}, Lcom/nextpeer/android/facebook/SessionDefaultAudience;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->ONLY_ME:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    new-instance v0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    const-string v1, "FRIENDS"

    const-string v2, "ALL_FRIENDS"

    invoke-direct {v0, v1, v5, v2}, Lcom/nextpeer/android/facebook/SessionDefaultAudience;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->FRIENDS:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    new-instance v0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    const-string v1, "EVERYONE"

    const-string v2, "EVERYONE"

    invoke-direct {v0, v1, v6, v2}, Lcom/nextpeer/android/facebook/SessionDefaultAudience;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->EVERYONE:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    sget-object v1, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->NONE:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->ONLY_ME:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->FRIENDS:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->EVERYONE:Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->nativeProtocolAudience:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/facebook/SessionDefaultAudience;
    .locals 1

    const-class v0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/facebook/SessionDefaultAudience;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method final getNativeProtocolAudience()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->nativeProtocolAudience:Ljava/lang/String;

    return-object v0
.end method
