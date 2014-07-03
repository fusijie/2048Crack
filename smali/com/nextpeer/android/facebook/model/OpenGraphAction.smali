.class public interface abstract Lcom/nextpeer/android/facebook/model/OpenGraphAction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/model/GraphObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/facebook/model/OpenGraphAction$Factory;
    }
.end annotation


# virtual methods
.method public abstract getApplication()Lcom/nextpeer/android/facebook/model/GraphObject;
.end method

.method public abstract getComments()Lorg/json/JSONObject;
.end method

.method public abstract getCreatedTime()Ljava/util/Date;
.end method

.method public abstract getData()Lcom/nextpeer/android/facebook/model/GraphObject;
.end method

.method public abstract getEndTime()Ljava/util/Date;
.end method

.method public abstract getExpiresTime()Ljava/util/Date;
.end method

.method public abstract getExplicitlyShared()Z
    .annotation runtime Lcom/nextpeer/android/facebook/model/PropertyName;
        value = "fb:explicitly_shared"
    .end annotation
.end method

.method public abstract getFrom()Lcom/nextpeer/android/facebook/model/GraphUser;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getImage()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLikes()Lorg/json/JSONObject;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getPlace()Lcom/nextpeer/android/facebook/model/GraphPlace;
.end method

.method public abstract getPublishTime()Ljava/util/Date;
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getStartTime()Ljava/util/Date;
.end method

.method public abstract getTags()Lcom/nextpeer/android/facebook/model/GraphObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nextpeer/android/facebook/model/GraphObjectList",
            "<",
            "Lcom/nextpeer/android/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract setApplication(Lcom/nextpeer/android/facebook/model/GraphObject;)V
.end method

.method public abstract setComments(Lorg/json/JSONObject;)V
.end method

.method public abstract setCreatedTime(Ljava/util/Date;)V
.end method

.method public abstract setData(Lcom/nextpeer/android/facebook/model/GraphObject;)V
.end method

.method public abstract setEndTime(Ljava/util/Date;)V
.end method

.method public abstract setExpiresTime(Ljava/util/Date;)V
.end method

.method public abstract setExplicitlyShared(Z)V
    .annotation runtime Lcom/nextpeer/android/facebook/model/PropertyName;
        value = "fb:explicitly_shared"
    .end annotation
.end method

.method public abstract setFrom(Lcom/nextpeer/android/facebook/model/GraphUser;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setImage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setImageUrls(Ljava/util/List;)V
    .annotation runtime Lcom/nextpeer/android/facebook/model/CreateGraphObject;
        value = "url"
    .end annotation

    .annotation runtime Lcom/nextpeer/android/facebook/model/PropertyName;
        value = "image"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLikes(Lorg/json/JSONObject;)V
.end method

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract setPlace(Lcom/nextpeer/android/facebook/model/GraphPlace;)V
.end method

.method public abstract setPublishTime(Ljava/util/Date;)V
.end method

.method public abstract setRef(Ljava/lang/String;)V
.end method

.method public abstract setStartTime(Ljava/util/Date;)V
.end method

.method public abstract setTags(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/nextpeer/android/facebook/model/GraphObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setType(Ljava/lang/String;)V
.end method
